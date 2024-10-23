cask "loupedeck" do
  version "6.0.1.20874"
  sha256 "797cba59a87e9334c63f55a351f976773cb32c4b805dcbcac5e10b5510acb040"

  url "https://5145542.fs1.hubspotusercontent-na1.net/hubfs/5145542/Knowledge%20Base/LD%20Software%20Downloads/#{version.major_minor_patch.chomp(".0")}/LoupedeckInstaller_#{version}.dmg",
      verified: "5145542.fs1.hubspotusercontent-na1.net/hubfs/5145542/"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  livecheck do
    url "https://loupedeck.com/downloads/"
    regex(/href=.*?LoupedeckInstaller(?:[._\s-]|%20)+v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "LoupedeckInstaller.pkg"

  uninstall launchctl: "com.loupedeck.loupedeck2.launch",
            quit:      [
              "com.logi.pluginservice",
              "com.loupedeck.Loupedeck2",
              "com.loupedeck.loupedeckApp",
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
              "com.loupedeck.UIPluginPackageInstaller",
            ],
            delete:    "/Applications/Loupedeck.app"

  zap trash: [
    "/Library/Application Support/Loupedeck",
    "~/Library/Application Support/Adobe/CameraRaw/Settings/Loupedeck*",
    "~/Library/Application Support/Adobe/Lightroom/Export Presets/Loupedeck Exports",
    "~/Library/Application Support/Adobe/Lightroom/Modules/loupedeck2.lrplugin",
    "~/Library/Application Support/Capture One/KeyboardShortcuts/Loupedeck_beta.plist",
    "~/Library/Application Support/Loupedeck",
    "~/Library/Application Support/LoupedeckConfig",
    "~/Library/Logs/LoupedeckConfig",
    "~/Library/Preferences/com.loupedeck.loupedeckApp.plist",
    "~/Library/Saved Application State/com.loupedeck.loupedeckApp.savedState",
  ]
end
