cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.21.0"
  sha256 arm:   "644fe609003745970934cfd7590fc0357bb622c7af0691623d1e29a0451b65d2",
         intel: "469df7119655e87fb842beb6f5f5388a48bda63ab492316cde55f1c13fd5fc05"

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
