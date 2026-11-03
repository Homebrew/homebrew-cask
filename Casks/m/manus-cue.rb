cask "manus-cue" do
  version "1.1.9"
  sha256 "d0e87134884cbb10f1a7eb0e37ee18b9114acaacbd916efbf540451bffb3f590"

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
