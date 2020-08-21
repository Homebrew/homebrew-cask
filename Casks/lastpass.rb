cask "lastpass" do
  version "4.54.0"
  sha256 "8cba57460c948f7b6a1291526dcf10440196f2d5bbefbed430ddc66bb81bccf3"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
