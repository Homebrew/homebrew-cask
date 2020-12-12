cask "quickkeyextension" do
  version "1.0,2"
  sha256 :no_check

  url "http://www.littlefin.com/downloads/qkextension.zip",
      verified: "littlefin.com/"
  name "QuickKey Extension"
  homepage "http://quickkey-app.com/extension/"

  app "QuickKeyExtension.app"
end
