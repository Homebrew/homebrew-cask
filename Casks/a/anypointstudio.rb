cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.20.0"
  sha256 arm:   "51f6fd8954a07488af790851e5fb381d68e7e6d806ef02a12f4ded738eebcaee",
         intel: "75fdc911b3234fe775a82089f01c0cd8485ea0c2cd611859b1f14faba631e854"

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
