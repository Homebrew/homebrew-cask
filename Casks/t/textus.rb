cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.8"
  sha256 arm:   "da998ef7451e9cb000f84351f98914bfbf9c2bec7e61f6de3b827398bc88626e",
         intel: "8798dee22b1cb41150b86b5a92429be6ea8f4d4acb10cb1ee5334b275818e2ac"

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
