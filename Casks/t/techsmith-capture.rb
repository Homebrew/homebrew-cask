cask "techsmith-capture" do
  version "1.3.31"
  sha256 :no_check

  url "https://cdn.cloud.techsmith.com/techsmithcapture/mac/TechSmithCapture.dmg"
  name "TechSmith Capture"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/jing-tool.html"

  disable! date: "2026-03-28", because: :no_longer_available, replacement_cask: "snagit"

  auto_updates true

  app "TechSmith Capture.app"

  zap trash: [
    "~/Library/Application Support/com.techsmith.relayrecorder",
    "~/Library/Application Support/TechSmith",
    "~/Library/Caches/com.techsmith.relayrecorder",
    "~/Library/HTTPStorages/com.techsmith.relayrecorder",
    "~/Library/HTTPStorages/com.techsmith.relayrecorder.binarycookies",
    "~/Library/Preferences/com.techsmith.relayrecorder.plist",
    "~/Library/Saved Application State/com.techsmith.relayrecorder.savedState",
  ]
end
