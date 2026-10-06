cask "siliconscope" do
  version "4.5.2"
  sha256 "f08f6c611454bcdd07fdd0e751a7ff30b315e4082d52f6ad8d7e27531c7679ca"

  url "https://github.com/kennss/SiliconScope/releases/download/v#{version}/SiliconScope-#{version}.dmg"
  name "SiliconScope"
  desc "System monitor for Apple Silicon with ANE, Media Engine and bandwidth tracking"
  homepage "https://siliconscope.calidalab.ai/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SiliconScope.app"

  zap trash: [
    "~/Library/Caches/ai.calidalab.SiliconScope",
    "~/Library/HTTPStorages/ai.calidalab.SiliconScope",
    "~/Library/HTTPStorages/ai.calidalab.SiliconScope.binarycookies",
    "~/Library/Preferences/ai.calidalab.SiliconScope.plist",
    "~/Library/Saved Application State/ai.calidalab.SiliconScope.savedState",
  ]
end
