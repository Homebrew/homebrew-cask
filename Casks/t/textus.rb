cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.12"
  sha256 arm:   "f73e54e116d4735f9c2df0914190398eb070d85b598d7f7a1223133e073f6296",
         intel: "9115d9358d8deea1c8b88bc411b75840065b916b1ad499e5d2c4625674c118f8"

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
