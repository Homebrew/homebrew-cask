cask "krisp" do
  version "1.40.11"
  sha256 "3a6e4a5432d8ac643e3d6c0da9bc205c197af18c70ef30126cd52e12403e968c"

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
