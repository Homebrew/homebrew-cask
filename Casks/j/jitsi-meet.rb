cask "jitsi-meet" do
  version "2023.8.0"
  sha256 "add927dcf1f6507b591bbb0eb604374e0e2472ef154b4d2f16548a19a3339550"

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
