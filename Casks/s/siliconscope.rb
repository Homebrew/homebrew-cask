cask "siliconscope" do
  version "4.9.1"
  sha256 "899824945d0e2304d251854bae8ea5fcee239b83cc3a4c9613a799cb3125a281"

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
