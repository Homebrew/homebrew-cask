cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "8b92fcdc8c593d18ffc1a1ac90951de2baa9de1e9d4c5a620c1126666928f788",
         intel: "95ac91bc101e0efeebddf907dbbaa1ba75c38779bd8a51977cab0c2a3eb01434"

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
