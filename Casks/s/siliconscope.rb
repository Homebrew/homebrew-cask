cask "siliconscope" do
  version "4.1.3"
  sha256 "be4744c8ca0856cafa90381b3e69574820357043a661f00485db95e1b38e2680"

  url "https://github.com/kennss/SiliconScope/releases/download/v#{version}/SiliconScope-#{version}.dmg"
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
