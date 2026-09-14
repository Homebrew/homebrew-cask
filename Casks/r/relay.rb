cask "relay" do
  version "0.9.2"
  sha256 "5e561c4723a410bbdb3496d92272d7216c1bad807b4b4b59cad078e328dfec03"

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
