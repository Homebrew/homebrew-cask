cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "c5d6f340e3c300bed9ba2d07c8538cd5c3f1edca685b406a5a589d50f41df043",
         intel: "0626fe62a86e9da252e33adba421c6cb5e8ffd7fc27e752c6e2be53a7b863d6f"

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
