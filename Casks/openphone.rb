cask "openphone" do
  version "1.9.2"
  sha256 "55fb295959ce82840872c9226cac106305048030e4035047e78d6ecd4e95af83"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  homepage "https://www.openphone.co/desktop"

  app "OpenPhone.app"
end
