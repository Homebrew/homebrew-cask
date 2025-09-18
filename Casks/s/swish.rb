cask "swish" do
  version "1.13"
  sha256 "309d1d7a29a8c9bb1116780ec71d60bf0298f269195bd3d44a9fe80675f0ccbb"

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

  app "Swish.app"

  zap trash: [
    "~/Library/Application Support/Swish",
    "~/Library/Caches/co.highlyopinionated.swish",
    "~/Library/Cookies/co.highlyopinionated.swish.binarycookies",
    "~/Library/Preferences/co.highlyopinionated.swish.plist",
  ]
end
