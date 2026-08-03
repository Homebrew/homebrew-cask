cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.46"
  sha256 arm:   "f8d8de8e627b27e90e80baf1c8c21015843f214b0793235dbb81186bcb359242",
         intel: "a8c61f04787515fbe6257a6b4639eb6edba1b8ccf5c5d17f359dedf5fbcb5b9e"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
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
