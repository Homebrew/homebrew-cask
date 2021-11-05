cask "jitsi-meet" do
  version "2021.11.1"
  sha256 "3195dfef47dee4fd996d9d58bbd65f0cc5136786f7f1c7e4e16014e2488f633e"

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
