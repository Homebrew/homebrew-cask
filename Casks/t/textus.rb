cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "734daa83d540296bd3baddb1993181493d2790bf170ffdaad42c0aa026482c3a",
         intel: "9706e530f6b0cc4cf1053d598807578b3d2cec6b0647b27f6b1ccf77e680ea1b"

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
