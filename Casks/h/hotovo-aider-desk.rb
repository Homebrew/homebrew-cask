cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.39.1"
  sha256 arm:   "fae6b1e7dae97a3c471b29b353127ffff5662ecf03d54d577b9001716d4ce051",
         intel: "1b507e6d71f824b005f630692bbf61f295e0c8c57892d843fecdef538988b3c8"

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
