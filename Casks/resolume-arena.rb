cask "resolume-arena" do
  version "7.3.1,72951"
  sha256 "0b25904b650dc1dd7a8c99dbe6833e3f95ec3bd757d8843aeba4809527971225"

  url "https://resolume.com/download/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.after_comma}_Installer.dmg"
  appcast "https://resolume.com/download/"
  name "Resolume Arena"
  homepage "https://resolume.com/"

  pkg "Resolume Arena Installer.pkg"

  uninstall pkgutil:   [
    "com.resolume.pkg.ResolumeArena.*",
    "com.resolume.pkg.ResolumeDXV",
    "com.resolume.pkg.ResolumeQuickLook",
    "com.resolume.pkg.ResolumeAlley",
    "com.resolume.pkg.ResolumeWireNodes",
    "com.resolume.pkg.ResolumeCommon",
  ],
            delete:    "/Applications/Resolume Arena #{version.major}",
            signal:    ["TERM", "com.resolume.arena"],
            launchctl: "com.resolume.arena"

  zap pkgutil: [
    "com.resolume.pkg.ResolumeDXV",
    "com.resolume.pkg.ResolumeQuickLook",
  ]
end
