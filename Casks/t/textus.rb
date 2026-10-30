cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.9"
  sha256 arm:   "7142f0f6455fbf10db668c41353a64650e257071d82172fc16bd3d89c9678ae3",
         intel: "8b7987aa3a7c8a8faa20a2a05cd4b0b8dfc7d92e59b74f1733c11c3b5474680e"

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
