cask "brewtarget" do
  version "3.0.3"
  sha256 "f450f050801da57b58107e7ae955235c50ac4cc00380792b34e25a5dce4602a2"

  url "https://github.com/Brewtarget/brewtarget/releases/download/v#{version}/brewtarget_#{version}_x86_64.dmg"
  name "brewtarget"
  desc "Beer recipe creation tool"
  homepage "https://github.com/Brewtarget/brewtarget/"

  app "brewtarget_#{version}.app"
end
