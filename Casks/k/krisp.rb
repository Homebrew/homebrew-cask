cask "krisp" do
  arch arm: "arm64", intel: "x64"

  version "2.33.4"
  sha256 arm:   "da3224a99296ff78648809ed98db6c9c083764f5e2bd1d71e8e2c91c18a6c05f",
         intel: "81d41d89ddcbbc65137eb3c88096293c6c78662a5db5df75704aa69c0579e5fd"

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
