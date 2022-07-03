cask "krisp" do
  version "1.39.5"
  sha256 "7f8a5da339742afdcad16f96b971cfd5a7c95d23d2af5ccb4d3810b86e2fd806"

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  name "Krisp"
  desc "Sound clear in online meetings"
  homepage "https://krisp.ai/"

  livecheck do
    url "https://api.krisp.ai/v2/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "krisp_#{version}.pkg"

  uninstall quit:      "ai.krisp.krispMac",
            launchctl: [
              "ai.krisp.krispMac.cameraAssistant",
              "ai.krisp.krispMac.LaunchHelper",
            ],
            pkgutil:   [
              "ai.krisp.krispMac",
              "ai.krisp.krispMacLaunch",
              "ai.krisp.krispMacVideo",
            ]
end
