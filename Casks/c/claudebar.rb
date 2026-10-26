cask "claudebar" do
  version "0.5.23"
  sha256 "a24d9ae2f577bc40d08c867ccc044dc00d2ceaf08a55fe72a21cd78487a7fd3f"

  url "https://github.com/tddworks/ClaudeBar/releases/download/v#{version}/ClaudeBar-#{version}.dmg"
  name "ClaudeBar"
  desc "Menu bar app for monitoring AI coding assistant usage quotas"
  homepage "https://github.com/tddworks/ClaudeBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "ClaudeBar.app"

  zap trash: [
        "~/Library/Application Support/ClaudeBar",
        "~/Library/Caches/ClaudeBar",
        "~/Library/Caches/com.tddworks.claudebar",
        "~/Library/HTTPStorages/com.tddworks.claudebar",
        "~/Library/Logs/ClaudeBar",
        "~/Library/Preferences/ClaudeBar.plist",
        "~/Library/Preferences/com.tddworks.claudebar.plist",
      ],
      rmdir: "~/.claudebar"
end
