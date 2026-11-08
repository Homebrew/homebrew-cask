cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.11"
  sha256 arm:   "71d90ea5881045e32620b2ca4db4da7059898c9b324911d84f5028ed2d498d33",
         intel: "67b5a5a2f66da9df29fed7450446ec7b244f15fa73000b6e7810b6cfb6c18d49"

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
