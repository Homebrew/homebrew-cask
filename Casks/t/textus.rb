cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "fb1455b124be40edd23688fd591f4358657b70a5c0adb5e7786e062bee449b3f",
         intel: "49a4314927816c6988e8d0f3dfa531725fff839000f3094d624953b29b5d78df"

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
