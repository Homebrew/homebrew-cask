cask "relay" do
  version "0.10.0"
  sha256 "7c9fc8023eba417af999d6dd3488e12258168ee1ebcb3e6004b4af5363ac0850"

  url "https://github.com/msllrs/relay/releases/download/v#{version}/Relay-v#{version}.dmg"
  name "Relay"
  desc "Menu bar app for building LLM prompts from files, clipboard and voice notes"
  homepage "https://github.com/msllrs/relay/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Relay.app"

  zap trash: [
    "~/Library/Application Support/Relay",
    "~/Library/Caches/com.msllrs.relay",
    "~/Library/HTTPStorages/com.msllrs.relay",
    "~/Library/Preferences/com.msllrs.relay.plist",
  ]
end
