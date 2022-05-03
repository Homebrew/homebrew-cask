cask "krisp" do
  version "1.36.6"
  sha256 "ffe462e74d6813f0d1286d1f515f40eaab0114cb361088a8609f448bafcc08bc"

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
