cask "brewtarget" do
  version "3.0.6"
  sha256 "157bfc624b307afc237cb958acc54ac39012e4cdf00c24a8ce9fa65f8d3f77e2"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "Brewtarget.app"
end
