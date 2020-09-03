cask "lastpass" do
  version "4.55.0"
  sha256 "73aee65ee2dad1c3a0248356bb2f577a66b800db9b8cffdfd21a8383daa80c46"

  url "https://download.cloud.lastpass.com/mac/LastPass.dmg"
  appcast "https://download.cloud.lastpass.com/mac/AppCast.xml"
  name "LastPass"
  homepage "https://www.lastpass.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "LastPass.app"
end
