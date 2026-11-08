cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.10"
  sha256 arm:   "3422fabec37578e39e2d3d260f1a88c6a96ad253fe67d4a9ae0b671097d14b3d",
         intel: "1be38f43b17692e232c924e1ae28e1156a98b83da26d3f83aa4d12e5b1f42762"

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
