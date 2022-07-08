cask "lemonlime" do
  version "0.3.3"
  sha256 "d3da9c4eeaa11d7c61e5da9bf5b48aade2c2446f7c6332e095d81f9cf6726b54"

  url "https://github.com/Project-LemonLime/Project_LemonLime/releases/download/#{version}/lemon-Release.dmg"
  name "lemonlime"
  desc "Tiny judging environment for OI contest based on Lemon + LemonPlus"
  homepage "https://github.com/Project-LemonLime/Project_LemonLime"

  app "lemon.app"
end
