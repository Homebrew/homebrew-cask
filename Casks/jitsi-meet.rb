cask "jitsi-meet" do
  version "2.4.0"
  sha256 "8eef8348a041ade8806323aa448bd5fe79b78031360b6d739a17f84ec4ff07e6"

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
