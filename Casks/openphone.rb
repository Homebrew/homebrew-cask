cask "openphone" do
  version "1.9.1"
  sha256 "a06985ee79cd2561a90e9d7c18b5d9a564321d4b18130a13d4969a6e276b20e5"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  homepage "https://www.openphone.co/desktop"

  app "OpenPhone.app"
end
