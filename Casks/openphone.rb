cask "openphone" do
  version "1.9.3"
  sha256 "268068a9614891a607db321931d407dd2f20ad1cf91e839cfc26ba038ff4dd07"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  homepage "https://www.openphone.co/desktop"

  app "OpenPhone.app"
end
