cask "krisp" do
  arch arm: "arm64", intel: "x64"

  version "2.18.7"
  sha256 arm:   "3aeea5a4e9ba5fcfb37d93ddf1d66ab4534702c7c832fc3fdd03c68205b6c0eb",
         intel: "0f1f361269a01fc39342ed3418674ab4e7d03c9b3cb15c37267f054291906080"

  url "https://cdn.krisp.ai/mp/#{version}/mac/#{arch}/krisp_#{version}_#{arch}.pkg"
  name "Krisp"
  desc "Noise cancelling application"
  homepage "https://krisp.ai/"

  livecheck do
    url "https://api.krisp.ai/v2/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "krisp_#{version}_#{arch}.pkg"

  uninstall quit:      "ai.krisp.krispMac",
            launchctl: [
              "ai.krisp.krispMac*",
              "krisp",
            ],
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
