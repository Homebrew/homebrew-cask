cask "siliconscope" do
  version "4.0.1"
  sha256 "db0d15743ba6d3c60a74698292e5e57cbf34d0e6acac312f13dcabf60a9cf681"

  url "https://github.com/kennss/SiliconScope/releases/download/v#{version}/SiliconScope-#{version}.dmg",
      verified: "github.com/kennss/SiliconScope/"
  name "SiliconScope"
  desc "System monitor for Apple Silicon with ANE, Media Engine and bandwidth tracking"
  homepage "https://siliconscope.calidalab.ai/"

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "SiliconScope.app"

  zap trash: [
    "~/Library/Caches/ai.calidalab.SiliconScope",
    "~/Library/HTTPStorages/ai.calidalab.SiliconScope",
    "~/Library/HTTPStorages/ai.calidalab.SiliconScope.binarycookies",
    "~/Library/Preferences/ai.calidalab.SiliconScope.plist",
    "~/Library/Saved Application State/ai.calidalab.SiliconScope.savedState",
  ]
end
