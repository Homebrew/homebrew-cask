cask "bluegriffon" do
  version "3.1"
  sha256 "cf457ac89447c8a54e0fbc1c13b995286e9b9143cee104fe3f3777a80f540a35"

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac-x86_64.dmg"
  name "BlueGriffon"
  desc "Web and EPUB editor"
  homepage "http://bluegriffon.org/"

  livecheck do
    url "http://bluegriffon.org/freshmeat/?C=M;O=D"
    regex(%r{href=['"]?(\d+(?:\.\d+)+)/}i)
  end

  depends_on macos: ">= :yosemite"

  app "BlueGriffon.app"
end
