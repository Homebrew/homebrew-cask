cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.4"
  sha256 arm:   "5fb8e1ec6fc058a2dd3bda4a565db8308dd3b47c205b34178d21fc1eeb99ea60",
         intel: "bbb11933c1f8c64797c6049a734bb6ff3bebc79af79fc27960524148dc0f775e"

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
