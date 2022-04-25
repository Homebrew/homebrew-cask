cask "resolume-arena" do
  version "7.11.2,13714"
  sha256 "a80da5cfcfc800be40d313df99d89f06148900648174cbdb8658944bc53e534b"

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

  uninstall pkgutil:   [
    "com.resolume.pkg.ResolumeArena.*",
    "com.resolume.pkg.ResolumeDXV",
    "com.resolume.pkg.ResolumeQuickLook",
    "com.resolume.pkg.ResolumeAlley",
    "com.resolume.pkg.ResolumeWireNodes",
    "com.resolume.pkg.ResolumeCommon",
    "com.resolume.pkg.ResolumeWire",
  ],
            delete:    "/Applications/Resolume Arena #{version.major}",
            signal:    ["TERM", "com.resolume.arena"],
            launchctl: "com.resolume.arena"

  zap pkgutil: [
    "com.resolume.pkg.ResolumeDXV",
    "com.resolume.pkg.ResolumeQuickLook",
  ]
end
