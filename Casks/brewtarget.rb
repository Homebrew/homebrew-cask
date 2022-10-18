cask "brewtarget" do
  version "3.0.1"
  sha256 "6d022a29698c46a70daecc5f5a3b4bbf5d44c760c92a9b62eaedcfb79539c585"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"
end
