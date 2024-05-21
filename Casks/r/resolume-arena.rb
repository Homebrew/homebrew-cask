cask "resolume-arena" do
  version "7.20.0,35717"
  sha256 "30b2e7618d94f525b991d6638dd8a5c63aa939e0b1fc1146cfce8561ca1d76a7"

  url "https://dd5sgwxv3xok.cloudfront.net/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.csv.second}_Installer.dmg",
      verified: "dd5sgwxv3xok.cloudfront.net/"
  name "Resolume Arena"
  desc "Video mapping software"
  homepage "https://resolume.com/"

  livecheck do
    url "https://resolume.com/download/"
    strategy :page_match do |page|
      page.scan(/href=.*?Arena[._-]v?(\d+(?:[._-]\d+)+)[._-]rev[._-](\d+).+\.dmg/i)
          .map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

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
