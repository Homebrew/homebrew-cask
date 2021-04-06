cask "bluegriffon" do
  version "3.1"
  sha256 "cf457ac89447c8a54e0fbc1c13b995286e9b9143cee104fe3f3777a80f540a35"

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac-x86_64.dmg"
  appcast "http://bluegriffon.org/freshmeat/?C=M;O=D"
  name "BlueGriffon"
  homepage "http://bluegriffon.org/"

  depends_on macos: ">= :yosemite"

  app "BlueGriffon.app"
end
