cask "krisp" do
  version "1.23.7"
  sha256 "491740e7158de1c2ebf0f848d5c0c1f6d498f939b9520a98d758d6a1824eb035"

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  name "Krisp"
  desc "Sound clear in online meetings"
  homepage "https://krisp.ai/"

  livecheck do
    url "https://api.krisp.ai/v2/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "krisp_#{version}.pkg"

  uninstall quit:      "ai.krisp.krispMac",
            launchctl: "ai.krisp.krispMac.cameraAssistant",
            pkgutil:   "ai.krisp.krispMac"
end
