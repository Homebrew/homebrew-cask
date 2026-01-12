cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.48.1"
  sha256 arm:   "085452ae2b14460dde5d1f1419c492bb0a878e039d341204003c554491816638",
         intel: "d2edb1813ed8b8c9e19a5dd6d0f2854993d93a95601ac825e80c713fa903b65b"

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
