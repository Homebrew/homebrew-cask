cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.8"
  sha256 arm:   "8d8a7e9a144040d7fbcb7a64052b6a5ae3170869c1ef445c196a4687d4910fbc",
         intel: "bee0f2ebc24563a16332884f5b3f0ec7a97f31b4629dddec22bf93cb212b35b4"

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
