cask "oscar" do
  version "1.2.0"
  sha256 "adaa1c9412c3e3d37fe275d1e1670b38fa1cdfdf58bd829a9db03cbd8f66a179"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  appcast "https://www.sleepfiles.com/OSCAR/"
  name "OSCAR"
  homepage "https://www.sleepfiles.com/OSCAR/"

  app "OSCAR.app"
end
