cask "keeper-password-manager" do
  version "16.3.2,202111122144"
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
