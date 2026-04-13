cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.61.0"
  sha256 arm:   "6ccb17e21178344e40515a58ea5a1d1e9c56097679d71725f9b221334cb6ff19",
         intel: "912b5244588a07c07bc002fec19d2b38515bc8dc7097f9c940fdfe4217334182"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
