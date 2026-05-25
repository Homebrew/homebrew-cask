cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.67.0"
  sha256 arm:   "6ab89608c201dde769bcc9b0c9f7c88b27190efc745025685797f9eaea563ec7",
         intel: "84f595247fbc84cd267a4459de63cde15b65be604f1f3e43d492f93ec8ab91b6"

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
