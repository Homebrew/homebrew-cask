cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.5"
  sha256 arm:   "3020a69e6dafd93e3de31fe17bf9bb20e6ca9caaf05162e3b10e47054de6c563",
         intel: "dad4d76e1909665a6be7006244578128cecbfa58d14af4f2a8231b087e2e2ac2"

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
