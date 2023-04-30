cask "brewtarget" do
  version "3.0.8"
  sha256 "59038b277bf9a94a2d2cc3aa2f112fdc7a851cc17ddecad3ada34f371a1c7178"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"
end
