cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.7"
  sha256 arm:   "aece77a282c5bb32a38b68ea15313ce3e7393a274e2016b2129be80c9035d27b",
         intel: "21e6e06a946a7f344a224feb9469cc7a3733c7af6825a19b22e4ffb11abd15ce"

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
