cask "jitsi-meet" do
  version "2022.6.1"
  sha256 "9fec24983dc566da048cb88669de63b955f0e9f371846f3c283a329cc81a29a3"

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
