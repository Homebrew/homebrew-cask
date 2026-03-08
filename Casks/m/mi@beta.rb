cask "mi@beta" do
  version "3.9.3"
  sha256 "019f2ef9ce438f2030658be650c62bdb67f86f14e9296d7c0c28a850b2e555fa"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/download/beta.html"

  livecheck do
    url "https://www.mimikaki.net/download/appcast_beta.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "mi"
  depends_on macos: ">= :big_sur"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
