cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "7f366cdd5c7225276a63708cf4014f0666e708da394c0301b0c8554780ee3d35",
         intel: "5234563dd29e4dc4643b4dc7e1b0a1a2f7dc73aa8948c3c2d40e9f3aeb62d6e3"

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
