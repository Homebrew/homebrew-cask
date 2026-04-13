cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.61.1"
  sha256 arm:   "0bd5a076c243d84735b19ce62169960ff40355e8ff42d50d6f03669c1447759a",
         intel: "f5dca066eaface60b57f507871ca76a0227db3481b1b7b4f18669c38dc9b0c40"

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
