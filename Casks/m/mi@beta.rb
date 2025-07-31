cask "mi@beta" do
  version "3.9beta1"
  sha256 "173af0796c8132314247dbca2807b440dafdb1e9b87191676a32a2560bfdff26"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  livecheck do
    url "https://www.mimikaki.net/download/appcast_beta.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "mi"
  depends_on macos: ">= :high_sierra"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
