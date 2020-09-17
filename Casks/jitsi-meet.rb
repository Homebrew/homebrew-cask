cask "jitsi-meet" do
  version "2.3.1"
  sha256 "a247278b9297b460dd2e298dc91de0fed0e7ad09af9147ba2b813d2d344b6b2a"

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
