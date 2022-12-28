cask "brewtarget" do
  version "3.0.5"
  sha256 "ff9d3733a308b729da45463502873c815849594f9c47f470197f18bf5261df9d"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "Brewtarget.app"
end
