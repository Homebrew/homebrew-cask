cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.39"
  sha256 arm:   "d05e86617f7e52b793661c7ebe1891a67e98b87e4b71e5cfe3bca39839b83fc3",
         intel: "0a8811d16985aa3701d507594874ae96f4d8c9a4ea3f9b2d9861ce2f8d69f24b"

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
