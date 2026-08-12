cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.54"
  sha256 arm:   "c1e4466efbaa04550f73746f8f2623b4fecbf6e6904a71749482cec6de64cf39",
         intel: "798e7dfe4645dbf62af49fad920d4e73e083831ba7bb5dc4b0f928d67f7b8c91"

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
