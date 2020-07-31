cask "lifesize" do
  version "2.216.2782"
  sha256 "c319107e6140f508310c2fe32f185d1b6385e088ec7059d9cf44066d207877fe"

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name "lifesize"
  homepage "https://www.lifesize.com/"

  app "Lifesize.app"
end
