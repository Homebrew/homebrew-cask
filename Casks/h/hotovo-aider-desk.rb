cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "f05d6e80583166849bd419b1e9b5d500fd94a7b39e6e59f96f8a15c5f7f25a1e",
         intel: "05d9776a608581790e1aef0ed6c699f0ebf13c3fa0b39ccf7b5c2d72a2f244b3"

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
