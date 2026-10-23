cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "1b7d2959e45bd8aa35fb0e4041aa9d083b4ea989f0a94fb1a7adaf08f3fe795c",
         intel: "93612192fe441b45c9df2a9565cd58b12081fbbdc03f97bbf11a449ddaf4aa81"

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
