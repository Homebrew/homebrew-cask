cask "loupedeck" do
  version "5.9.0.19176"
  sha256 "df939adeb085c7a097d2cef96f5d15850c764d1b741bb25b9b12ae68d5c7b924"

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
