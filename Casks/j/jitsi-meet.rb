cask "jitsi-meet" do
  version "2026.10.0"
  sha256 "6e45229b85b82ec5461636f5720e1283bda094d1677cb5b753e1c024eba62d4f"

  url "https://github.com/jitsi/jitsi-meet-electron/releases/download/v#{version}/jitsi-meet.dmg"
  name "Jitsi Meet"
  desc "Secure video conferencing app"
  homepage "https://github.com/jitsi/jitsi-meet-electron/"

  auto_updates true
  depends_on macos: :monterey

  app "Jitsi Meet.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.jitsi.jitsi-meet.sfl*",
    "~/Library/Application Support/Jitsi Meet",
    "~/Library/Logs/Jitsi Meet",
    "~/Library/Preferences/org.jitsi.jitsi-meet.plist",
  ]
end
