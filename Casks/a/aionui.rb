cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3"
  sha256 arm:   "e0562b6d8bb1a74c3b4f8b2661ac26204e374ddee8b34d23e158846a4d195780",
         intel: "e045b81d3448b7a8ec9dc1d9ab82f7a90ffd26c7e6115c4c0fd6bd4634463078"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
