cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.86.0"
  sha256 arm:   "93d1b4440f9d614036bd0c0ca5518b8da7e541c5a857bbc3f671004af27f1195",
         intel: "de5d605011ebdf15dd25b018341023555a48d484e9c95ed7d63f5d4fb32edd45"

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
