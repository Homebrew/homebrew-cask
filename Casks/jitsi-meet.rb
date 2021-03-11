cask "jitsi-meet" do
  version "2.7.0"
  sha256 "98ed7b01898f254ab4065f6850085ed72dadd91f60e0e63f87cb5a9f33eb0c12"

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  appcast "https://github.com/jitsi/jitsi-meet-electron/releases.atom"
  name "Jitsi Meet"
  desc "Free, open-source and secure video conferencing app"
  homepage "https://github.com/jitsi/jitsi-meet-electron"

  app "Jitsi Meet.app"

  zap trash: [
    "~/Library/Application Support/Jitsi Meet",
    "~/Library/Logs/Jitsi Meet",
  ]
end
