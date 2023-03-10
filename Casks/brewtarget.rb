cask "brewtarget" do
  version "3.0.7"
  sha256 "dcf2eef2713ec7a7f2017123bb2e506368835561972e851dbfa7cddb313e5dab"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"
end
