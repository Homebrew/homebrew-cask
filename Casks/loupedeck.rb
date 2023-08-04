cask "loupedeck" do
  version "5.7.1.17118"
  sha256 "00ff6847f45df3a9eef777336fd0acdd493647563f94833a3b9324af95f8b507"

  url "https://support.loupedeck.com/hubfs/Knowledge%20Base/LD%20Software%20Downloads/#{version.major_minor_patch}%20hotfix%20for%20macOS/Loupedeck%20#{version}.dmg"
  name "Loupdeck"
  desc "Software for Loupedeck consoles"
  homepage "https://loupedeck.com/"

  livecheck do
    url "https://loupedeck.com/downloads/"
    regex(/href=.*?Loupedeck(?:[._\s-]|%20)+v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "LoupedeckInstaller.pkg"

  uninstall signal:    [
              ["TERM", "com.loupedeck.Loupedeck2"],
              ["QUIT", "com.loupedeck.Loupedeck2"],
              ["INT", "com.loupedeck.Loupedeck2"],
              ["HUP", "com.loupedeck.Loupedeck2"],
              ["KILL", "com.loupedeck.Loupedeck2"],
            ],
            launchctl: "com.loupedeck.loupedeck2.launch",
            pkgutil:   [
              "com.loupedeck.ImageLibraryInstaller",
              "com.loupedeck.LibraryInstaller",
              "com.loupedeck.LoupedeckLibraryPackageManagerMacPackageInstaller",
              "com.loupedeck.LoupedeckPackageInstaller",
              "com.loupedeck.LoupedeckServiceToolPackageInstaller",
              "com.loupedeck.MediaInstaller",
              "com.loupedeck.OBSClientPluginPackageInstaller",
              "com.loupedeck.PluginPackageInstaller",
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
