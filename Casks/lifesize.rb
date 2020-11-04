cask "lifesize" do
  version "2.216.2836"
  sha256 "1301855e4da565ed5e9e2089f1107df6d4fff83e152ac94bcbbf97f30ceabf41"

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name "lifesize"
  homepage "https://www.lifesize.com/"

  app "Lifesize.app"
end
