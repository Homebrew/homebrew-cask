cask "jitsi-meet" do
  version "2026.6.0"
  sha256 "d47288330b863e92ab98bd5d127fe5eaed086bdff0dd5f1a50878e9414497f84"

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
