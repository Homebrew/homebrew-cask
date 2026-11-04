cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "3eea8dbfbc25030abe3278554cded8723dc38b2f68019e440d1b10135b0e6811",
         intel: "36ef039372d403580c91257fd3ada422a4974c0376dd839255ea7b3349abad78"

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
