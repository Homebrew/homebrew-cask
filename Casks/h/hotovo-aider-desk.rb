cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.90.0"
  sha256 arm:   "3fa818ec9cab56e8dd242c3727668ba9e0ef683ea43c1b4895ab9d15136328ce",
         intel: "f003280120b8e7ec3f5268745e16f145be699c6100e1f3be018ea28362fff4df"

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
