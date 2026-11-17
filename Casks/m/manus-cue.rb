cask "manus-cue" do
  version "1.1.18"
  sha256 "9c9ad97e583eec08ee2bbb33caa134d8b63416453b77514e2bb8a27441607e58"

  url "https://download.cue.im/Cue-#{version}-mac-arm64.dmg"
  name "Cue"
  desc "Personal AI agents with their own identities"
  homepage "https://cue.im/"

  livecheck do
    url "https://download.cue.im/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Cue.app"

  uninstall quit: "ai.manus.agents"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.manus.agents.sfl*",
    "~/Library/Application Support/Cue",
    "~/Library/Application Support/cue-desktop",
    "~/Library/Logs/Cue",
    "~/Library/Preferences/ai.manus.agents.plist",
  ]
end
