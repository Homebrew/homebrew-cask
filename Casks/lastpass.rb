cask "lastpass" do
  version "4.53.0"
  sha256 "b477d2de690a6d6914c7af26710485767247bae664495fee943ffe73a587748c"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
