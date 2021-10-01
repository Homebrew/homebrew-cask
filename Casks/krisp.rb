cask "krisp" do
  version "1.26.20"
  sha256 "0cb1b1b41abe6cf9c267b7ad0ed0ee720ca5223bc1d506e2f3c7b731d34fc6d8"

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
