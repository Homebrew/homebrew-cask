cask "krisp" do
  version "1.36.4"
  sha256 "91fa4d1c3fe5d9f7355ac3de4db095bc97767a7b89ac530a48819ab44aab78a5"

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
