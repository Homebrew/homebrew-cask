cask "keeper-password-manager" do
  version "16.9.1,1681325899845"
  sha256 :no_check

  url "https://keepersecurity.com/desktop_electron/Darwin/KeeperSetup.dmg"
  name "Keeper Password Manager"
  desc "Password manager application and digital vault"
  homepage "https://keepersecurity.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Keeper Password Manager.app"

  zap trash: [
    "~/Library/Application Support/Keeper Password Manager",
    "~/Library/Preferences/com.keepersecurity.passwordmanager.plist",
    "~/Library/Saved Application State/com.keepersecurity.passwordmanager.savedState",
  ]
end
