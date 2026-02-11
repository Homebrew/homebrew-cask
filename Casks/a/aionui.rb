cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.7"
  sha256 arm:   "43d5fd2cf08164090d2b252d56750febc2fd27ab64f8f15ad4fc18eefb91ba7c",
         intel: "ccada8b02cdb8eb4cf09f467794a2f6b13ae5b3267a2d38e0f4f3ccf4f487c3f"

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
