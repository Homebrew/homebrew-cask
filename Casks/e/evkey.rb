cask "evkey" do
  version "3.3.10"
  sha256 :no_check

  url "https://github.com/lamquangminh/EVKey/releases/download/Release/EVKeyMac.zip",
      verified: "github.com/lamquangminh/EVKey/"
  name "EVKey"
  desc "Vietnamese keyboard"
  homepage "https://evkeyvn.com/"

  livecheck do
    url :homepage
    regex(/EVKeyMac\.zip.*?v?(\d+(?:\.\d+)+)/im)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "EVKeyMac.app"

  zap trash: [
    "~/Library/Containers/com.lamquangminh.evkey",
    "~/Library/Containers/com.lamquangminh.evkeyhelper",
  ]

  caveats do
    requires_rosetta
  end
end
