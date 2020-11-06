cask "openphone" do
  version "1.9.7"
  sha256 "c4c80840c8b0752f9a84ed7c2544161092a3232f7693d3a09ed29931fca73bbc"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  homepage "https://www.openphone.co/desktop"

  app "OpenPhone.app"
end
