cask "jitsi-meet" do
  version "2025.2.0"
  sha256 "26e4fbf4c16924f896cda7e72bbd0c0033f3c7951d0de02bdfe3e47758619f0f"

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
