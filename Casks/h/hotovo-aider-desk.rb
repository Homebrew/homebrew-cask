cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.81.0"
  sha256 arm:   "d73314cdfcd897749525fa042e38bc68177e8f4863210bf47a158ce909fc0bd2",
         intel: "b89e61bf1977a099a4d72dcb8ed8f2f4cdda56c6d527aa430052db85b49c6838"

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
