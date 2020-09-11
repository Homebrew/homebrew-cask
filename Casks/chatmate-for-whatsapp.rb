cask "chatmate-for-whatsapp" do
  version "4.3.1,482:1537891987"
  sha256 "af6b75282d8b0c0782246f771a4718675616cbdc6b62682a9e055641ab1e5ac7"

  # dl.devmate.com/net.coldx.mac.WhatsApp/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.coldx.mac.WhatsApp/#{version.after_comma.before_colon}/#{version.after_colon}/ChatMateforWhatsApp-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/net.coldx.mac.WhatsApp.xml"
  name "ChatMate for WhatsApp"
  desc "Extension app WhatsApp"
  homepage "https://chatmate.io/"

  depends_on macos: ">= :sierra"

  app "ChatMate for WhatsApp.app"

  zap trash: [
    "~/Library/Application Support/ChatMate for WhatsApp",
    "~/Library/Application Support/ColdX/net.coldx.mac.WhatsApp",
    "~/Library/Caches/net.coldx.mac.WhatsApp",
    "~/Library/Cookies/net.coldx.mac.WhatsApp.binarycookies",
    "~/Library/Preferences/net.coldx.mac.WhatsApp.plist",
    "~/Library/WebKit/net.coldx.mac.WhatsApp",
  ]
end
