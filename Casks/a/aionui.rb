cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.27"
  sha256 arm:   "36e1bebd3e2a0b804b654adf25c8d6ac34ae07f98ac01c53566196d856b57ce8",
         intel: "4f8f8ab22653e74d71c733493f9052ac5dd7a720ac92786f36e086d72bb8e8ee"

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
