cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.6"
  sha256 arm:   "46afcdef2bc56393d2bb888c8fa2888bc9c1e6eef9e0db61c3974b7727e354f8",
         intel: "2c3fe657a942bc26d82cce087f94c16ca1ee7fd84f798b80b67307a74f2a5240"

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
