cask "krisp" do
  arch arm: "arm64", intel: "x64"

  version "2.33.3"
  sha256 arm:   "028754e2bbdb2e7e884e6242e847ca5c7714f0a8b05cb0c10aaa4db1e08ce34b",
         intel: "4330255a4eee3f405ff0fb75b03e8023fe060208c54e8fa5754cb28026bd74d1"

  url "https://cdn.krisp.ai/mp/#{version}/mac/Krisp_#{version}_#{arch}.pkg"
  name "Krisp"
  desc "Noise cancelling application"
  homepage "https://krisp.ai/"

  livecheck do
    url "https://whatsnew.krisp.ai"
    regex(/krisp\sv?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "krisp_#{version}_#{arch}.pkg"

  uninstall launchctl: [
              "ai.krisp.krispMac*",
              "krisp",
            ],
            quit:      "ai.krisp.krispMac",
            pkgutil:   "ai.krisp.krispMac*",
            delete:    "/Applications/krisp.app"

  zap trash: [
    "~/Library/Application Scripts/ai.krisp.krispMac.LaunchHelper",
    "~/Library/Application Support/ai.krisp.krispMac",
    "~/Library/Caches/ai.krisp.krispMac",
    "~/Library/Containers/ai.krisp.krispMac.LaunchHelper",
    "~/Library/HTTPStorages/ai.krisp.krispMac.*",
    "~/Library/LaunchAgents/ai.krisp.krispMac.cameraAssistant.plist",
    "~/Library/Preferences/ai.krisp.krispMac.plist",
  ]
end
