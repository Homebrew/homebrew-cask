cask "maxon-app" do
  version "1.0.0"
  sha256 "d60f049892c1ad6f28feebde4319afd5e6948742b47fbab13f4138c942edf526"

  url "https://installer.maxon.net/installer/RG_installers/Maxon_App_#{version}_Mac.dmg"
  name "Maxon App"
  desc "Download the Maxon App to install, use, and try all our products."
  homepage "https://www.maxon.net/en/downloads/"

  installer script: {
    executable: "#{staged_path}/Maxon App Installer.app/Contents/Scripts/install.sh"
  }

  uninstall delete: "#{staged_path}/#{token}"

  zap trash: [
      "~/Library/Application Support/Maxon",
      "~/Library/Application Support/Red Giant",
      "~/Library/Saved Application State/net.maxon.app-manager.savedState",
      "~/Library/Preferences/Maxon",
      "~/Library/Preferences/net.maxon.app-manager.plist",
      "~/Library/Caches/net.maxon.app-manager",
      "/Users/Shared/Maxon",
      "/Users/Shared/Red Giant",
      "/Library/Application Support/Maxon",
      "/Library/Application Support/Red Giant",
      "/Library/Logs/Maxon",
      "/Library/Logs/Red Giant",
      "/Library/LaunchDaemons/net.maxon.deployservice.plist",
      "/Library/PrivilegedHelperTools/net.maxon.deployservice",
  ]
end
