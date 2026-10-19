cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "a789588f7623f1c8b54bdaa07d9e6c831da23281bf8b1456a3f8e7f806a26375",
         intel: "5f548129bc1ebbac5854f62c6c1047f79d80523613fc1535d654201b7d194142"

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
