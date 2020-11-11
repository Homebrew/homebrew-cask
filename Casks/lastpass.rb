cask "lastpass" do
  version "4.60.0"
  sha256 "7fc8feb33df09130562c195b397d6461e90c985ea1a0f327d0d4eb384df6bcc3"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  desc "Cross-platform password manager"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
