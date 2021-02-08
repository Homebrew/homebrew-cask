cask "evkey" do
  version "v3.3.6"
  sha256 :no_check

  url "https://github.com/lamquangminh/EVKey/releases/download/Release/EVKeyMac.zip",
      verified: "github.com/lamquangminh/EVKey/"
  name "EVKey"
  desc "Vietnamese Keyboard"
  homepage "https://evkeyvn.com/"

  app "EVKey.app"
end
