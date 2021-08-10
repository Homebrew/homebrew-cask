cask "krisp" do
  version "1.24.7"
  sha256 "03da782c0bf2b1e4787ffbeb326a5921bf5294981418bd2d995f541d26f8723b"

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
