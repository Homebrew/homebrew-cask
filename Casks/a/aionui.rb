cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.28"
  sha256 arm:   "7a03690f9ecf9a607dcd6b1b2fab7ab30e8211bdbd0be04fda34664dee78d195",
         intel: "a6d04dd6f3ef86eed0ecb0a01b5f5779274b298721abaf98f9a78a6fb8095c76"

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
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
