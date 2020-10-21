cask "openphone" do
  version "1.9.6"
  sha256 "f2ef9b8a92f6f72c8bc8b96eebbe0ba695213a46a5fb3bd3c3c9c1a0177907e3"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  homepage "https://www.openphone.co/desktop"

  app "OpenPhone.app"
end
