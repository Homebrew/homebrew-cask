cask "lastpass" do
  version "4.56.0"
  sha256 "c59fc1bc438cbf54adb374c9b78d70a97acbfe1d09914b490ce4cfd966f59ec3"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
