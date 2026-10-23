cask "textexpander" do
  version "8.5,908.5.999"
  sha256 "b4c05c05699dc2bfb76521f76bb31230b972133904d67bc8c30f95cdf529c49d"

  url "https://cdn.textexpander.com/electron-mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://textexpander.com/"

  livecheck do
    url "https://cgi.textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "TextExpander.app"

  uninstall quit: "com.smileonmymac.textexpander"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.smileonmymac.textexpander.sfl*",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.smileonmymac.textexpander.json",
    "~/Library/Application Support/TextExpander",
    "~/Library/Caches/com.smileonmymac.textexpander",
    "~/Library/Preferences/com.smileonmymac.textexpander.plist",
    "~/Library/Saved Application State/com.smileonmymac.textexpander.savedState",
    "~/Library/Webkit/com.smileonmymac.textexpander",
  ]
end
