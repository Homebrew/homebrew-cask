cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.78.0"
  sha256 arm:   "350cbca093ed47d27f43cb89f2d967a85780ba8b2a7484c1d0fed92bf241802f",
         intel: "0f504e3e0d08a18af4d51f1a21c4d2cd1ff34a8710b6be404da4d5c7e3d2f6ae"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hotovo.aider-desk.sfl*",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
