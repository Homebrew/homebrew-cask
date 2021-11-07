cask "maxon" do
  version "2.0.0"
  sha256 "b45c6c593c942c99c5f1554cb9f6bf9efef7741773d4b2d17a6832135b4c45d1"

  url "https://installer.maxon.net/installer/RG_installers/Maxon_App_#{version.major_minor}_Mac.dmg"
  name "Maxon App"
  desc "Install, use, and try Maxon products"
  homepage "https://www.maxon.net/en/downloads/"

  livecheck do
    skip "No version information available"
  end

  installer script: {
    executable: "#{staged_path}/Maxon App Installer.app/Contents/Scripts/install.sh",
    sudo:       true,
  }

  uninstall delete:    [
    "/Applications/Maxon.app",
    "/Library/Application Support/Maxon",
    "/Library/Application Support/Red Giant",
    "/Library/Logs/Maxon",
    "/Library/Logs/Red Giant",
  ],
            launchctl: [
              "com.maxon.mxredirect.agent",
              "com.redgiant.service",
            ]

  zap trash: [
    "~/Library/Application Support/Maxon",
    "~/Library/Application Support/Red Giant",
    "~/Library/Caches/net.maxon.app-manager",
    "~/Library/Preferences/Maxon",
    "~/Library/Preferences/net.maxon.app-manager.plist",
    "~/Library/Saved Application State/net.maxon.app-manager.savedState",
    "/Users/Shared/Maxon",
    "/Users/Shared/Red Giant",
  ]
end
