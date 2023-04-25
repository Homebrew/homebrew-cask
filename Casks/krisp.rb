cask "krisp" do
  arch arm: "arm64", intel: "x64"

  version "2.18.6"
  sha256 arm:   "e85e9cda73bd4b8b5d0b1eba4767b603d28fcc07f92e00d0aa793ac2d2812476",
         intel: "264e0640ca73bc6874069c51c2d780f1d68aae3033ae5efa4a7a6f9755802e4a"

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
