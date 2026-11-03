cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "2eb433575b47a2f4dfccb9aa50a173f094d33633d513e76ce473f077fc4beb84",
         intel: "843737a6e7bef2afc3f70d7334b40d3f01644f91f23112c166e4a40e8e6f5964"

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
