cask "oscar" do
  version "1.2.0"
  sha256 "adaa1c9412c3e3d37fe275d1e1670b38fa1cdfdf58bd829a9db03cbd8f66a179"

  # apneaboard.com/OSCAR/ was verified as official when first introduced to the cask
  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg"
  appcast "https://www.sleepfiles.com/OSCAR/"
  name "OSCAR"
  homepage "https://www.sleepfiles.com/OSCAR/"

  app "OSCAR.app"
end
