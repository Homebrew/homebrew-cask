cask "lynxlet" do
  version "0.8.1"
  sha256 "78224e5bfcfcea7d63a22e3baaeac0df215673b94af32c572714b061cf05789f"

  url "https://habilis.net/lynxlet/Lynxlet_#{version}.dmg"
  name "Lynxlet"
  desc "Launch Lynx in a Terminal window"
  homepage "https://habilis.net/lynxlet/"

  livecheck do
    url :homepage
    regex(/href=.*?Lynxlet_(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Lynxlet.app"
end
