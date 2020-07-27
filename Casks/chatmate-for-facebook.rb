cask "chatmate-for-facebook" do
  version "4.3.1,482:1537946763"
  sha256 "7e658246e0ac4c35c36de5f730f5f2fca6c644f25cb134d165167e38c4b7771e"

  # dl.devmate.com/net.coldx.mac.Facebook/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.coldx.mac.Facebook/#{version.after_comma.before_colon}/#{version.after_colon}/ChatMateforFacebook-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/net.coldx.mac.Facebook.xml"
  name "ChatMate for Facebook"
  homepage "https://chatmate.io/mac/facebook/"

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
