cask "resolume-arena" do
  version "7.25.4,3572"
  sha256 "d358dee780e3469e83c325ab2ceb174df9605bd8fb9f622f9f4123a451b4913c"

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
