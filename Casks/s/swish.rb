cask "swish" do
  version "1.10.4"
  sha256 "1ca142fdc5b771d04ed30e8e54cf7667665cfc1487a028541fb6d4e37e72df8d"

  url "https://github.com/chrenn/swish-dl/releases/download/#{version}/Swish.dmg",
      verified: "github.com/chrenn/swish-dl/"
  name "Swish"
  desc "Control windows and applications right from your trackpad"
  homepage "https://highlyopinionated.co/swish/"

  livecheck do
    url "https://highlyopinionated.co/swish/appcast.xml"
    strategy :sparkle, &:short_version
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
