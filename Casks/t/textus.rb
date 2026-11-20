cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.5"
  sha256 arm:   "a65070e7c86795c81def10247b0a85e529f7509be78b8e75da7ddb07f0fe1885",
         intel: "5e0102beaa550facca8263d5d6050614c76d550c8ba840040d3e8c4faf6c2331"

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
