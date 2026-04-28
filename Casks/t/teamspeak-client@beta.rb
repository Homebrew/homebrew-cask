cask "teamspeak-client@beta" do
  arch arm: "arm", intel: "intel"

  version "6.0.0-beta4"
  sha256 arm:   "3019de8c44de0de1799733606d9e90b30e28684c7dc4f3b5294f42e8dd0de149",
         intel: "dc07467b167dd5c5efd2be5ecd2d9c300708525fa8b8a45cad04b2840dfa6ff7"

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
