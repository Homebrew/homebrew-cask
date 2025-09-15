cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "2e0afc21df9c546527248f1f8900666deae1205fcd946406ccb8fcb84d1e5c46",
         intel: "40819e9d7e8ce4d16a2c9077d7cab2ca8a08f170782712749e15cb05eb765a58"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
