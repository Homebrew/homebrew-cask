cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.5"
  sha256 arm:   "ddea5b0ff2f63497f1d5b2fa8c6eecf5a3e972f80b8f07d5df4d8fee55e83a2f",
         intel: "9c41bbe8c568a7c34e68e42a354ab48fe0d0d738491f32383cfcfaa2049dd5da"

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
