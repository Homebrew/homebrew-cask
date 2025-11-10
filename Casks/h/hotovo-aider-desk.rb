cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.39.0"
  sha256 arm:   "9e43e0f4ccc4b3d1273f24f4eb573e83c7076feb49e75c53f2f81bdf6537d977",
         intel: "e28a66130727d2120897799532d3caa015c678fe73b7cbdaac68b5f5ff409104"

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
