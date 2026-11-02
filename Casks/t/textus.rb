cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.3"
  sha256 arm:   "1bd27fec451702c7100f8f6976d06521f9038f115f918bea01a5877247eb530b",
         intel: "af4ef8aab59def6d1683975a557457ac6baa083f8ce11335e21b20ad5cda4cfd"

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
