cask "textexpander" do
  version "8.2.5,825.2"
  sha256 "59b1ede74315d6e6233bf00a2064f9ea34ddcc97b56fd4ac50e39396e70df1f3"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://textexpander.com/"

  livecheck do
    url "https://cgi.textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
