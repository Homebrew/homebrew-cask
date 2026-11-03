cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "ba46669c17a1f4b819eec66bbec71ac7c2648a0ec2cc504af3d0f95388c7b0ec",
         intel: "a376fe6548f9de66ac5588ac69934036bba6c8f8a98d112cdcacad90983e7cc5"

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
