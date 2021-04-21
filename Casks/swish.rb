cask "swish" do
  version "1.7.1,44"
  sha256 "56846282e9f641e5ebcccee6f0b8614df43429716e990995b6cda1e6a031c595"

  url "https://github.com/chrenn/swish-dl/releases/download/#{version.before_comma}/Swish.zip",
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
