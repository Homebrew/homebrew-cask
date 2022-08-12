cask "jitsi-meet" do
  version "2022.8.1"
  sha256 "a3706d1420fb6db8f24d76b4bff7ea2af6ba23ca54978ed17b4eb55517ab46a5"

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  name "Jitsi Meet"
  desc "Secure video conferencing app"
  homepage "https://github.com/jitsi/jitsi-meet-electron/"

  auto_updates true

  app "Jitsi Meet.app"

  zap trash: [
    "~/Library/Application Support/Jitsi Meet",
    "~/Library/Logs/Jitsi Meet",
  ]
end
