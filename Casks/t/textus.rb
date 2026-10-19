cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "ca8465e6a01797503082f79c6347ff3b60369f53380843cfd3f02497ba6c8f09",
         intel: "a37e06fdcff2f2b028f9ca4da0073dace920679d1dd7988d71ffdb8d06732edc"

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
