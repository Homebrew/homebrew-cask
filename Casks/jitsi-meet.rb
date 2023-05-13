cask "jitsi-meet" do
  version "2023.5.0"
  sha256 "530c87d9c1d7a360cdc911ca6d6a8cba7cb1cc434ec3844336077d222ab67e94"

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
