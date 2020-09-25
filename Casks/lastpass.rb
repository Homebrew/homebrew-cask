cask "lastpass" do
  version "4.57.1"
  sha256 "5d8a49c2763054424bf0ae00158ece32ed82f12b352204ccf3205d16ed235875"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
