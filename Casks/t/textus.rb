cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "72897474e159c0f3f133d8d4fd3ebcec1c90732e6d8b177aa276e3749af4d9a2",
         intel: "29cefe11416485f300ce9d6e204c298e2d509e47f1fc2e0577380bd2902c19f6"

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
