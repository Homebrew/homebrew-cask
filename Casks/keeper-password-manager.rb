cask "keeper-password-manager" do
  version "16.1.1,202106301833"
  sha256 :no_check

  url "https://keepersecurity.com/desktop_electron/Darwin/KeeperSetup.dmg"
  name "Keeper Password Manager"
  homepage "https://keepersecurity.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Keeper Password Manager.app"
end
