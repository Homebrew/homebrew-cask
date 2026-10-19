cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.88.0"
  sha256 arm:   "b7c0562ef638e0a5b61e9008bad087d71ae570080662bc2148dbaef7261e84bd",
         intel: "4a9009bb5e6ffad26ce05601fd8e9f66f60fc9e60511a4544e19b52db7f943f7"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "aider-desk.app"

  zap trash: [
    "~/.aider-desk",
    "~/Library/Application Support/aider-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hotovo.aider-desk.sfl*",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
