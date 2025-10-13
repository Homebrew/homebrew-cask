cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "111ed4029b05a4b5cf3e815951997b4aa67229f9660f0d5cc54e149178999f36",
         intel: "b8c3055e521185a2127a672192c07ebd1ed69b433b352242cb2e3f773ae002ca"

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
