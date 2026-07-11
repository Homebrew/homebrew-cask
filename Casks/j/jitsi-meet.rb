cask "jitsi-meet" do
  version "2026.7.0"
  sha256 "b52316e73317effeb324f8a085dace1827ba6fd9440f4d0e32d46aef21589690"

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  name "Jitsi Meet"
  desc "Secure video conferencing app"
  homepage "https://github.com/jitsi/jitsi-meet-electron/"

  auto_updates true
  depends_on macos: :monterey

  app "Jitsi Meet.app"

  zap trash: [
    "~/Library/Application Support/Jitsi Meet",
    "~/Library/Logs/Jitsi Meet",
  ]
end
