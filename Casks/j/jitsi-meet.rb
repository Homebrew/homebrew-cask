cask "jitsi-meet" do
  version "2024.10.0"
  sha256 "cec934d4db04fcef9197f45376c6232a47e4c213a69c631f950d5032cf3bf661"

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  name "Jitsi Meet"
  desc "Secure video conferencing app"
  homepage "https://github.com/jitsi/jitsi-meet-electron/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jitsi Meet.app"

  zap trash: [
    "~/Library/Application Support/Jitsi Meet",
    "~/Library/Logs/Jitsi Meet",
  ]
end
