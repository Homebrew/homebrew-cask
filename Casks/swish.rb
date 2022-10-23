cask "swish" do
  version "1.9,52"
  sha256 "0c6933bb5651d1365d9c512dcaae7fde97e87a93c3254a5bbe769971887efe24"

  url "https://github.com/chrenn/swish-dl/releases/download/#{version.csv.first}/Swish.zip",
      verified: "github.com/chrenn/swish-dl/"
  name "Swish"
  desc "Control windows and applications right from your trackpad"
  homepage "https://highlyopinionated.co/swish/"

  livecheck do
    url "https://highlyopinionated.co/swish/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Swish.app"

  zap trash: [
    "~/Library/Application Support/Swish",
    "~/Library/Caches/co.highlyopinionated.swish",
    "~/Library/Cookies/co.highlyopinionated.swish.binarycookies",
    "~/Library/Preferences/co.highlyopinionated.swish.plist",
  ]
end
