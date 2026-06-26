cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.25"
  sha256 arm:   "fcb62081ab2c0a3302e6ce29b78d56ba6e4e5210af14078ea38489e5f3cd7f6c",
         intel: "2f244b7c6e87f7e330bc3bbe08b4b5c9be1f6c1f8d0617d2000761bd6512d266"

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
