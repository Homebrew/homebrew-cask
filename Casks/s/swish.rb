cask "swish" do
  version "1.10.3"
  sha256 "b41b769d7ca7cdc8abf36fb6a27dd00ca9548af11634ab24c73cafa653f44608"

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
