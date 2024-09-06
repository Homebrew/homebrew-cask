cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.18.1"
  sha256 arm:   "af7613ddaaa7274d92a982f64724720f6ddbab9c32be8aced73e36d6fd902c87",
         intel: "3f9dddf20bee30a3976a607a0c7138b265301e2284e7fd2ad5bae1bd68b0ce9f"

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
