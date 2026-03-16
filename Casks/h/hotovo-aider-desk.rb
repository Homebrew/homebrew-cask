cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.57.0"
  sha256 arm:   "690c9d3b3e5bb3d28309fd81b6300e569b44022ec11ecae880d59c7774393e17",
         intel: "3e7e95b0c0502d0b0ca45cea8a43b733d006ec0ab49eeb5f7a164a2bd50bacbc"

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
