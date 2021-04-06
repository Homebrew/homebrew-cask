cask "evkey" do
  version "3.3.6,1"
  sha256 :no_check

  url "https://github.com/lamquangminh/EVKey/releases/download/Release/EVKeyMac.zip",
      verified: "github.com/lamquangminh/EVKey/"
  name "EVKey"
  desc "Vietnamese keyboard"
  homepage "https://evkeyvn.com/"

  app "EVKey.app"

  zap trash: [
    "~/Library/Containers/com.lamquangminh.evkey",
    "~/Library/Containers/com.lamquangminh.evkeyhelper",
  ]
end
