cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.18"
  sha256 arm:   "38dbcbdb570862c0ec5e91ffdf9b26587e814537f0b76119928063bfb91274d4",
         intel: "4ff60cfcf5ab4f2596af904ed0b30bc4020b8ade6c983e43630c0aaeeb6ef363"

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
