cask "lifesize" do
  version "2.216.2806"
  sha256 "e08a40b1a159fa5431642029014a15f7a39393b3524c304c194f6f8ad7675308"

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name "lifesize"
  homepage "https://www.lifesize.com/"

  app "Lifesize.app"
end
