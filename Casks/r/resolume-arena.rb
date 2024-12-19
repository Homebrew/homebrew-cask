cask "resolume-arena" do
  version "7.22.2,42470"
  sha256 "7fe72702d39961094c6a361f9f5b4243f3a5b5e9e661be26339d2f48898bb31f"

  url "https://dd5sgwxv3xok.cloudfront.net/Resolume_Arena_#{version.csv.first.dots_to_underscores}_rev_#{version.csv.second}_Installer.dmg",
      verified: "dd5sgwxv3xok.cloudfront.net/"
  name "Resolume Arena"
  desc "Video mapping software"
  homepage "https://resolume.com/"

  livecheck do
    url "https://resolume.com/update/arena_updates_mac.xml"
    regex(/^v?(\d+(?:\.\d+)+)\s*rev\s*(\d+)$/i)
    strategy :sparkle do |item, regex|
      match = item.short_version&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "Resolume Arena Installer.pkg"

  uninstall launchctl: "com.resolume.arena",
            signal:    ["TERM", "com.resolume.arena"],
            pkgutil:   [
              "com.resolume.pkg.ResolumeAlley",
              "com.resolume.pkg.ResolumeArena.*",
              "com.resolume.pkg.ResolumeCommon",
              "com.resolume.pkg.ResolumeDXV",
              "com.resolume.pkg.ResolumeQuickLook",
              "com.resolume.pkg.ResolumeWire",
              "com.resolume.pkg.ResolumeWireNodes",
            ],
            delete:    "/Applications/Resolume Arena #{version.major}"

  zap pkgutil: [
    "com.resolume.pkg.ResolumeDXV",
    "com.resolume.pkg.ResolumeQuickLook",
  ]
end
