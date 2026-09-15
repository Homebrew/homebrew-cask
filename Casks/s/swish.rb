cask "swish" do
  version "1.13.3"
  sha256 "8e968454db7617b6a293f3e0e551c214c5aa86f443bc669b3e1316114a18d52c"

  url "https://github.com/chrenn/swish-dl/releases/download/#{version}/Swish.dmg"
  name "Swish"
  desc "Control windows and applications right from your trackpad"
  homepage "https://highlyopinionated.co/swish/"

  livecheck do
    url "https://highlyopinionated.co/swish/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Swish.app"

  uninstall quit: "co.highlyopinionated.swish"

  zap trash: [
    "~/Library/Application Support/Swish",
    "~/Library/Caches/co.highlyopinionated.swish",
    "~/Library/Cookies/co.highlyopinionated.swish.binarycookies",
    "~/Library/Preferences/co.highlyopinionated.swish.plist",
  ]
end
