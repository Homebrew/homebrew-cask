cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.9"
  sha256 arm:   "c68c5b69c160b9757c3ad700b866b96c4a6ccc50827742b97fad293c3d67d45d",
         intel: "da843d0174bda3a55aaadc44ab61e1e19258524199206376e891ac703a36f48e"

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
