cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "59181a2e2d15c5efce025f05d5fb541d4d6ac7068bce897514362983549b85fc",
         intel: "daef4cee5ef9cc19b80390a95fde5644817a605452914989d6ed45ea4804bf63"

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
