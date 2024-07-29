cask "lynxlet" do
  version "0.8.1"
  sha256 "78224e5bfcfcea7d63a22e3baaeac0df215673b94af32c572714b061cf05789f"

  url "https://habilis.net/lynxlet/Lynxlet_#{version}.dmg"
  name "Lynxlet"
  desc "Launch Lynx in a Terminal window"
  homepage "https://habilis.net/lynxlet/"

  disable! date: "2024-07-14", because: "is 32-bit only"

  app "Lynxlet.app"
end
