cask "krisp" do
  version "1.25.3"
  sha256 "a995ac186541c69393d6a72529613bd719e1c9a5ea2eb4c135bcb4658dc85912"

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
