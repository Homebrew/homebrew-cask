cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.44.0"
  sha256 arm:   "8b505d7317b7ab1c974dd4a82b54d512630bc0b05d30dd957218d1a3dccd347d",
         intel: "2336aae91def6f23a84a25e2856ddcf1e423f2a465d5471cd98de9c03a8fed76"

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
