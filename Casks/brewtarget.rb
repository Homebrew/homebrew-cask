cask "brewtarget" do
  version "3.0.0"
  sha256 "35667724ebec5f11e7022f27a29e8eab4cf830ead6f94d139224c8a3e5c2f704"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget.app"
end
