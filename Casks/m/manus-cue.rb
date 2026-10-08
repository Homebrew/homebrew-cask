cask "manus-cue" do
  version "1.0.9"
  sha256 "e03a0b58157f863bd90d6838d7505c4c58f17728ff2bf2306f755b170ec0e6de"

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
