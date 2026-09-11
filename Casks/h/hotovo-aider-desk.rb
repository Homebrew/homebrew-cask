cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.82.0"
  sha256 arm:   "e270d76ec90710febb886a515bfa20c0d2aff1d2eee061a69bf5ff4b149fb39b",
         intel: "98311b8efa72a5db95806c9189be4ab039ae82950931df9bd7b228a8ae3632c9"

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
