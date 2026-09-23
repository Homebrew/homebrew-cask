cask "textexpander" do
  version "8.4.8,848.4"
  sha256 "b587de0724684329f33e5dfdb0b7842cf70d1e4e2d83f55b68cc4669daecdeb7"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://textexpander.com/"

  livecheck do
    url "https://cgi.textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "TextExpander.app"

  zap trash: [
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.smileonmymac.textexpander.json",
    "~/Library/Application Support/TextExpander",
    "~/Library/Caches/com.smileonmymac.textexpander",
    "~/Library/Preferences/com.smileonmymac.textexpander.plist",
    "~/Library/Saved Application State/com.smileonmymac.textexpander.savedState",
    "~/Library/Webkit/com.smileonmymac.textexpander",
  ]
end
