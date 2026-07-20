cask "siliconscope" do
  version "3.2.0"
  sha256 "7ddb16f0e556d59be659671ae1db887a8d38f4f37285252781893b9f70b0f619"

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
