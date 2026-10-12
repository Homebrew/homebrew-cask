cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.87.0"
  sha256 arm:   "4e5538613de8d2c3d5e3a498a19def5c2bbef4156c6a57360e128d4542793e63",
         intel: "446ef88518c08fe878a7e50d7ed65aaf65a86e65e8d28427e91651155f9b76cd"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "aider-desk.app"

  zap trash: [
    "~/.aider-desk",
    "~/Library/Application Support/aider-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hotovo.aider-desk.sfl*",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
