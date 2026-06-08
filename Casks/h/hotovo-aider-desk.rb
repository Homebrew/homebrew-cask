cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.69.0"
  sha256 arm:   "3e3b4c5cfaadd75b66e0292ea84872410d45c4ef5ed97afe3b683bf3eb1b5dc1",
         intel: "11ac2844ae4542e81326396ea9c966a5fba4b1feaa49cfb9e8a3a88afb0c6474"

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
