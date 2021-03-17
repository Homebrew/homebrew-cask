cask "jitsi-meet" do
  version "2.7.1"
  sha256 "212fe022d03baafa8b98fa4a702e49052f2a9b0168331bcc8b7bc7331b73f166"

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
