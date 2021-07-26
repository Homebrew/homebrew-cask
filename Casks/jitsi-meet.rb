cask "jitsi-meet" do
  version "2.8.9"
  sha256 "0421f487459ca86cde6696c708cb5cc6e5db39dd913334089244d8e486af20cb"

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
