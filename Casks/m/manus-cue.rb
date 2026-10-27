cask "manus-cue" do
  version "1.1.5"
  sha256 "b059843754aa101e8e645ad2ca6e822024b16e3f194c608686d3ebc5fd39ba16"

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
