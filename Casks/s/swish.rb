cask "swish" do
  version "1.13.2"
  sha256 "1db6ddcbc950f71d869114cee5dc069485e682d1be7bce494dee2fc3cb04f333"

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
