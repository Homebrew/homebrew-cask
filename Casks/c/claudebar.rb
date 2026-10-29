cask "claudebar" do
  version "0.5.24"
  sha256 "c3c736b3a7bc7e607511866158cd01ae67e39185a3bd1fde6b75efab26350d8f"

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
