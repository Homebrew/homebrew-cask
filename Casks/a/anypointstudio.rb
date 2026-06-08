cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.25.0"
  sha256 arm:   "0dec5479ae4d44fd2df228769b680fe5a8a66296d00cb6271e886e5f3fe96300",
         intel: "4e8fca0660a568693db4da21602e199a55975bd101dcca0df07cb5d857c0d995"

  url "https://mule-studio.s3.amazonaws.com/#{version}-GA/AnypointStudio-#{version}-macos#{arch}.zip",
      verified: "mule-studio.s3.amazonaws.com/"
  name "Anypoint Studio"
  desc "Eclipse-based IDE for designing and testing Mule applications"
  homepage "https://www.mulesoft.com/platform/studio"

  livecheck do
    url "https://docs.mulesoft.com/release-notes/studio/anypoint-studio"
    regex(/Anypoint\s+Studio\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "AnypointStudio.app"

  uninstall delete: "/Library/Logs/DiagnosticReports/AnypointStudio*.diag"

  # No zap stanza required
end
