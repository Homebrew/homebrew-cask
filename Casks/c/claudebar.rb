cask "claudebar" do
  version "0.4.69"
  sha256 "85bc2b90022310a1bb3c8514d270d8a878727f2eabdbb314a0d8aa2b1269709a"

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
  ]
end
