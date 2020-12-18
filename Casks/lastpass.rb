cask "lastpass" do
  version "4.60.0,1121"
  sha256 :no_check

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
