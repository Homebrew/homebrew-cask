cask "loupedeck" do
  version "6.1.2.22511"
  sha256 "b7b0a301cbddf0d579e9d1eacae29ffd2ec0273b11a943c02ca707f946e879ea"

  url "https://support.loupedeck.com/hubfs/Knowledge%20Base/LD%20Software%20Downloads/#{version.major_minor_patch.chomp(".0")}/LoupedeckInstaller_#{version}.dmg"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  livecheck do
    url "https://loupedeck.com/downloads/"
    regex(/href=.*?LoupedeckInstaller(?:[._\s-]|%20)+v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  # pkg cannot be installed automatically
  installer manual: "LoupedeckInstaller.pkg"

  uninstall launchctl: "com.loupedeck.loupedeck2.launch",
            quit:      [
              "com.loupedeck.Loupedeck2",
              "com.loupedeck.loupedeckconfig",
            ],
            pkgutil:   [
              "com.loupedeck.ImageLibraryInstaller",
              "com.loupedeck.LibraryInstaller",
              "com.loupedeck.LoupedeckLibraryPackageManagerMacPackageInstaller",
              "com.loupedeck.LoupedeckPackageInstaller",
              "com.loupedeck.LoupedeckServiceToolPackageInstaller",
              "com.loupedeck.MediaInstaller",
              "com.loupedeck.OBSClientPluginPackageInstaller",
              "com.loupedeck.PluginPackageInstaller",
              "com.loupedeck.UIPackageInstaller",
            ],
            delete:    "/Applications/Loupedeck.app"

  zap trash: [
    "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Karo Holmberg",
    "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck - Loke Roos",
    "~/Library/Application Support/Adobe/Lightroom/Export Presets/Loupedeck Exports",
    "~/Library/Application Support/Adobe/Lightroom/Modules/loupedeck2.lrplugin",
    "~/Library/Application Support/Capture One/KeyboardShortcuts/Loupedeck_beta.plist",
    "~/Library/Application Support/LoupedeckConfig",
    "~/Library/Logs/LoupedeckConfig",
  ]
end
