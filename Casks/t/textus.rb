cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.8"
  sha256 arm:   "c95fc2640daa2bf07116242e4cb7955d4d249ce638f8fd283307e1e4acb446e6",
         intel: "80e1b777accb6b285cddbe531cab3cd58cff3cc7554180580e9c1786e1985f87"

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
