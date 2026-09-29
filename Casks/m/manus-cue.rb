cask "manus-cue" do
  version "1.0.1"
  sha256 "55ee16923e73911d3f7b63f2e8e4e736f0a564503e0e778654e7ff8c6c112eb9"

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
    "~/Library/Application Support/Cue",
    "~/Library/Preferences/ai.manus.agents.plist",
  ]
end
