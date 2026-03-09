cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.56.0"
  sha256 arm:   "8a6efae5839f19a68d7c8ba1faedc0d66aaa4e307660a118ff8ea069f4e4c3f2",
         intel: "bee56b9a4075e570a76b736c3be8b2ea13802841873558e14340a2987b0616ab"

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
