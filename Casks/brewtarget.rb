cask "brewtarget" do
  version "3.0.2"
  sha256 "5e36976e594ea60f6bb7450efb5e6d7e253e1f1693d2d8a2da108831c0191b39"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"
end
