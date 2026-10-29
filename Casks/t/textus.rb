cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.6"
  sha256 arm:   "e8c1e9b5e2cab07a74f8c65c3d5b7dc29888594c1794faa0698e3f3997c8d99e",
         intel: "aeb8ca4b71e60de0512681e9f2871606d8bc117bdac9fc67da2a4219e56796dc"

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
