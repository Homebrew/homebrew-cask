cask "claudebar" do
  version "0.4.62"
  sha256 "b4a645868ed660f017d00c1c0dcd0ea19965958c3aedbbdcca46da2aa205557f"

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
