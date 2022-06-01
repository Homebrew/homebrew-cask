cask "chatmate-for-facebook" do
  version "4.3.1,482,1537946763"
  sha256 "7e658246e0ac4c35c36de5f730f5f2fca6c644f25cb134d165167e38c4b7771e"

  url "https://dl.devmate.com/net.coldx.mac.Facebook/#{version.csv.second}/#{version.csv.third}/ChatMateforFacebook-#{version.csv.second}.zip",
      verified: "dl.devmate.com/net.coldx.mac.Facebook/"
  name "ChatMate for Facebook"
  desc "Facebook Messenger client"
  homepage "https://chatmate.io/mac/facebook/"

  livecheck do
    url "https://updates.devmate.com/net.coldx.mac.Facebook.xml"
    regex(%r{/(\d+)/ChatMateforFacebook\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "ChatMate for Facebook.app"

  zap trash: [
    "~/Library/Application Support/ChatMate for Facebook",
    "~/Library/Application Support/ColdX/net.coldx.mac.Facebook",
    "~/Library/Caches/net.coldx.mac.Facebook",
    "~/Library/Cookies/net.coldx.mac.Facebook.binarycookies",
    "~/Library/Logs/net.coldx.mac.Facebook",
    "~/Library/Preferences/net.coldx.mac.Facebook.plist",
    "~/Library/WebKit/net.coldx.mac.Facebook",
  ]
end
