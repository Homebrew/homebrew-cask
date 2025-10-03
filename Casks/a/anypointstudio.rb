cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.22.0"
  sha256 arm:   "323e42056d71b4218ad2a287ab2106304f8f3f8d10e5df880e295594d28c9420",
         intel: "b365e18dbf6483e1e4ce9f420c9a25128e301df5caa3a999031cde8a18fbcf48"

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
