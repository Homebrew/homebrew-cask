cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.60"
  sha256 arm:   "40d0675ee6500a300d0641009bf476d07ca6fa67dcf9426af994ac4b8dea5dfb",
         intel: "7082cb772195189ef980abafa346785f35627d330960f606b52be8afaecd2654"

  url "https://static.aionui.com/releases/#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://www.aionui.com/"

  livecheck do
    url "https://static.aionui.com/releases/latest-mac.yml"
    regex(/^version:\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Logs/AionUi",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
