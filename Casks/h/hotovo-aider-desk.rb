cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.46.0"
  sha256 arm:   "6d6e564f6d6c11831a339fff6d4c56a9cab1d1ed5b4d1e585bd3c8feda2cb8cd",
         intel: "5d2c3986fbbcab4f1fc6c6be588fc19dab7c0c9327e43365762ea9e8b6782136"

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
