cask "jitsi-meet" do
  version "2.8.2"
  sha256 "df15bd13ff65b3e15d885a1944d874918b69a4e21ffb549f22fb10ae635ec849"

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  name "Jitsi Meet"
  desc "Free, open-source and secure video conferencing app"
  homepage "https://github.com/jitsi/jitsi-meet-electron"

  app "Jitsi Meet.app"

  zap trash: [
    "~/Library/Application Support/Jitsi Meet",
    "~/Library/Logs/Jitsi Meet",
  ]
end
