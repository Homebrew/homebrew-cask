cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "7635948dab2b6950847452ffb667543269825a13bc65e4c4e02d84aa953a31d3",
         intel: "d61abbca78ecbb277bfc635f3b705db4b42fe1ba59da5aa253aba4e49b579632"

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
