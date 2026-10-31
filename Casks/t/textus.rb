cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "620ae22371d26984eeda8a588e43150a3ce220d02d75279d8f8e5a383a0e2f86",
         intel: "1de209df78754c0968d44dfc32ede37f6d05d846528f319770efe3357b8e0277"

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
