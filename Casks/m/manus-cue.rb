cask "manus-cue" do
  version "1.1.0"
  sha256 "9f5b2cd5e198415e8bd0e635e65884e04935c9e503a234af7168448cddfade7c"

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
