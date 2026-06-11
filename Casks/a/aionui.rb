cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.17"
  sha256 arm:   "bcff8713c529e9ded005a0d9e6c5580e634bcbf9b1cea95a4a6bb6cf9f62540e",
         intel: "678d6127888a0f1da0f0193c691e2a03b82ce11024e3d11512f70d9e911533e7"

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
