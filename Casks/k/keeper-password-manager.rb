cask "keeper-password-manager" do
  version "16.11.2"
  sha256 :no_check

  url "https://keepersecurity.com/desktop_electron/Darwin/KeeperSetup.dmg"
  name "Keeper Password Manager"
  desc "Password manager application and digital vault"
  homepage "https://keepersecurity.com/"

  livecheck do
    url "https://docs.keeper.io/en/v/release-notes/desktop"
    regex(/Release\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  app "Keeper Password Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.keepersecurity.passwordmanager.sfl*",
    "~/Library/Application Support/Keeper Password Manager",
    "~/Library/Preferences/com.keepersecurity.passwordmanager.plist",
    "~/Library/Saved Application State/com.keepersecurity.passwordmanager.savedState",
  ]
end
