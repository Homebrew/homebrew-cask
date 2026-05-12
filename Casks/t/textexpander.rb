cask "textexpander" do
  version "8.4.3,843.7"
  sha256 "beb68635409fe6c538695db8729c439589db5b6d8ff23755ad80683048f842a4"

  url "https://cdn.textexpander.com/mac/#{version.csv.second}/TextExpander_#{version.csv.first}.dmg"
  name "TextExpander"
  desc "Inserts pre-made snippets of text anywhere"
  homepage "https://textexpander.com/"

  livecheck do
    url "https://cgi.textexpander.com/appcast/TextExpander-macOS.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

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
