cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.9.16"
  sha256 arm:   "38a754bfdfbb9e7a8802226258d3d7162169e0b1d288c114d48bfa71e9ab0c6e",
         intel: "3001e390a773a2c03ecba19de1343cf8f35e7a6f1718c769ee83ab937ef9a53d"

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
