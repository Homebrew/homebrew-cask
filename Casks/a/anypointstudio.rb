cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.24.0"
  sha256 arm:   "565421e0f14597a3c16a78ffc1a2dd65245beb60aa89cb279dc94560299fea56",
         intel: "434f51f02c88ae9342cf6a71552996a4284afd616dec780aa0cbd253586b6301"

  url "https://mule-studio.s3.amazonaws.com/#{version}-GA/AnypointStudio-#{version}-macos#{arch}.zip",
      verified: "mule-studio.s3.amazonaws.com/"
  name "Anypoint Studio"
  desc "Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/platform/studio"

  livecheck do
    url "https://docs.mulesoft.com/release-notes/studio/anypoint-studio"
    regex(/Anypoint\s+Studio\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "AnypointStudio.app"

  uninstall delete: "/Library/Logs/DiagnosticReports/AnypointStudio*.diag"

  # No zap stanza required
end
