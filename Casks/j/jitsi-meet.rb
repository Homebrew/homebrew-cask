cask "jitsi-meet" do
  version "2025.8.1"
  sha256 "ec4187a078d4a1b228daffca10ef8edd89a7bf81ee2d80f015782c891f70f30a"

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
