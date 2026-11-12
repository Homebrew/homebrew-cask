cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "2d1998334b88a5b983bf208c01fa15c8216b7c15b04c74c28519f88739fe2940",
         intel: "468f2317c459e27b487d38d2a6e785f892506d38690b225c28f88beb0e8b80ac"

  url "https://github.com/CatVinci-Studio/Textus/releases/download/v#{version}/Textus_#{version}_#{arch}.dmg"
  name "Textus"
  desc "WYSIWYG Markdown editor with built-in AI writing tools"
  homepage "https://textus.catvinci.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Textus.app"

  zap trash: [
    "~/Library/Application Support/com.catvinci.textus",
    "~/Library/Caches/com.catvinci.textus",
    "~/Library/Preferences/com.catvinci.textus.plist",
    "~/Library/Saved Application State/com.catvinci.textus.savedState",
    "~/Library/WebKit/com.catvinci.textus",
  ]
end
