cask "brewtarget" do
  version "3.0.4"
  sha256 "1ae54e638c58ea24e69770b54dd3ee6e020716b2966d7e73f764bac7cd849e2c"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "Brewtarget.app"
end
