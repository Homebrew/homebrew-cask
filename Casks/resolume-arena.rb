cask "resolume-arena" do
  version "7.9.0,11617"
  sha256 "852c2fecb8559dea00f4a3438bb6eb98cc2b35a1af4bd9f34d70279f347cf548"

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.csv.second}_Installer.dmg"
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
