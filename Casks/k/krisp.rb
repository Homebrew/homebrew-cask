cask "krisp" do
  arch arm: "arm64", intel: "x64"

  version "2.28.5"
  sha256 arm:   "94cb614861eeb933923d8146e8f8673af860356ffc146508a068e72a2d855b0d",
         intel: "b16a86c0c1280b2dd49f3cc7a261afb1a50ef6b82c469cf66911fb594d005deb"

  url "https://cdn.krisp.ai/mp/#{version}/mac/krisp_#{version}_#{arch}.pkg"
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
