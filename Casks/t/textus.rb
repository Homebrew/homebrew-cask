cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.4"
  sha256 arm:   "8f455f8f1a35da5e379a553715fd4af189d2a5d48c04e174d3ec15cf39ec1564",
         intel: "ad9bdc16a2504c59d6a74cca07d254e966bc31ef6574ec74ac379d127036bb54"

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
