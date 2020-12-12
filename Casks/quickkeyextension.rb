cask "quickkeyextension" do
  version "1.0,2"
  sha256 :no_check

  # littlefin.com/ was verified as official when first introduced to the cask
  url "http://www.littlefin.com/downloads/qkextension.zip"
  name "QuickKey Extension"
  homepage "http://quickkey-app.com/extension/"

  app "QuickKeyExtension.app"
end
