cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "fad6522fee30e7523e4cc69c6e5c7ce6c28e4c4952313514c3ddf9a1a00fb270",
         intel: "1f6582642189bae61db9fbf691cb375f100fc842800f0c91dbd264878562b54f"

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
