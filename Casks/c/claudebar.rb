cask "claudebar" do
  version "0.3.16"
  sha256 "e031b7ba462f7191db3376ee9dbfdeb5bb02d0ad57f9e37ac804a7376e004ce1"

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
