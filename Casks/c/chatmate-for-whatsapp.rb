cask "chatmate-for-whatsapp" do
  version "4.3.1,482,1537891987"
  sha256 "af6b75282d8b0c0782246f771a4718675616cbdc6b62682a9e055641ab1e5ac7"

  url "https://dl.devmate.com/net.coldx.mac.WhatsApp/#{version.csv.second}/#{version.csv.third}/ChatMateforWhatsApp-#{version.csv.second}.zip",
      verified: "dl.devmate.com/net.coldx.mac.WhatsApp/"
  name "ChatMate for WhatsApp"
  desc "Extension app WhatsApp"
  homepage "https://chatmate.io/"

  deprecate! date: "2025-03-30", because: :unmaintained

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

  caveats do
    requires_rosetta
  end
end
