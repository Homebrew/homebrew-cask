cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "99b02733558deca152b642cc753afd030345d72a44d799f1505ddcc61365d96d",
         intel: "4e4e0c364025fa67f5cdf595dd9f9c450574f06c9cab0f588524b4a714c725c4"

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
