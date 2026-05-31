cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.8"
  sha256 arm:   "2518faead5c2db9c5f0e16299132cf8a71d461335dd28e7c6415c84fc044f343",
         intel: "7a08b2ebf460ccc00e87383c9c3072fc7f90ba72b0fe4e3cebc74cc1eb7e9883"

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
