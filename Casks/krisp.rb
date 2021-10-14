cask "krisp" do
  version "1.27.12"
  sha256 "916873da6da9aa35fe327d3233ff1826b3ab318208b95e45848128c5ed1a822e"

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
            launchctl: "ai.krisp.krispMac.cameraAssistant",
            pkgutil:   "ai.krisp.krispMac"
end
