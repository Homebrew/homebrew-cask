cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.8"
  sha256 arm:   "c125f95f7ae3f4222810c0d6c4974ba581847391587ef42a5f9dcf288721963b",
         intel: "e18d275329d58c2d19197b0185a53da2e17d2388fdfaa39b866137ca7b3b7e52"

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
