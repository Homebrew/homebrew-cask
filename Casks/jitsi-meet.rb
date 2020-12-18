cask "jitsi-meet" do
  version "2.4.2"
  sha256 "a52774e523e5f3dbbde5d68bed3d928d2d267bea9faeeac1672bca5d3a4ff9dc"

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
