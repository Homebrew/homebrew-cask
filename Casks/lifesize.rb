cask "lifesize" do
  version "2.216.2831"
  sha256 "3cceb24a19153372f166a037f2791095f5c397eb32bf952cc90c78d5c71453b5"

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name "lifesize"
  homepage "https://www.lifesize.com/"

  app "Lifesize.app"
end
