cask "claudebar" do
  version "0.3.13"
  sha256 "085dec09c9235edcf927cc4888372c1c7481755da7c01815a49c3839fa259d7e"

  url "https://github.com/tddworks/ClaudeBar/releases/download/v#{version}/ClaudeBar-#{version}.dmg"
  name "ClaudeBar"
  desc "Menu bar app for monitoring AI coding assistant usage quotas"
  homepage "https://github.com/tddworks/ClaudeBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Caches/ClaudeBar",
    "~/Library/Caches/com.tddworks.claudebar",
    "~/Library/Preferences/ClaudeBar.plist",
    "~/Library/Preferences/com.tddworks.claudebar.plist",
  ]
end
