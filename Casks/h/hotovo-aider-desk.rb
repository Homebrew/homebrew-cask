cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.71.0"
  sha256 arm:   "32f64428ab4e5c22389d4283597dd2c93b0503b9a639ebbe1d2bfd3a4fa47c30",
         intel: "00978426fd680f3ef3cba79254301125723cd5282b2b7e89b2594bb522bbe64c"

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
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
