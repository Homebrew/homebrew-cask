cask "teamspeak-client@beta" do
  arch arm: "arm", intel: "intel"

  version "6.0.0-beta4.1"
  sha256 arm:   "7107fe5f524c2c8c280af7fb15fefbe41ecfb5ca1b6d1fe949435ed5414e7f27",
         intel: "cdc03c43bd13c52ae97c2716f3ce9fea0325cb3e458a9955f2b6b12eaccaf54d"

  url "https://files.teamspeak-services.com/pre_releases/client/#{version}/teamspeak-client-#{arch}.dmg",
      verified: "files.teamspeak-services.com/"
  name "TeamSpeak Beta"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  livecheck do
    url "https://teamspeak.com/en/downloads/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+[^/]*)/teamspeak[._-]client-#{arch}\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on :macos

  app "TeamSpeak.app"

  zap trash: [
    "~/Library/Preferences/com.teamspeak.#{version.major}.client.plist*",
    "~/Library/Preferences/TeamSpeak",
    "~/Library/Saved Application State/com.teamspeak.#{version.major}.client.savedState",
  ]
end
