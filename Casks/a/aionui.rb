cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.21"
  sha256 arm:   "4ba9abd2f93697004c2a664d5bae3a3bb9aa96c7201d275ad9fdb12288a157d4",
         intel: "e65b3c1c7e8488c78397464dd18330dc4588b4ee2b2fdd3c677310dfc95a43c2"

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
