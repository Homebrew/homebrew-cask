cask "bluegriffon" do
  version "3.1"
  sha256 "cf457ac89447c8a54e0fbc1c13b995286e9b9143cee104fe3f3777a80f540a35"

  url "http://bluegriffon.org/freshmeat/#{version}/bluegriffon-#{version}.mac-x86_64.dmg"
  name "BlueGriffon"
  desc "Web and EPUB editor"
  homepage "http://bluegriffon.org/"

  deprecate! date: "2024-06-28", because: :discontinued

  app "BlueGriffon.app"

  caveats do
    requires_rosetta
  end
end
