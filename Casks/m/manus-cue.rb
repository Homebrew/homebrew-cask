cask "manus-cue" do
  version "1.0.11"
  sha256 "46a7b7cc4d270eb259fc6a0f7056aa4613bc63248e1492b7f357ae1634519fdb"

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
    "~/Library/Preferences/ai.manus.agents.plist",
  ]
end
