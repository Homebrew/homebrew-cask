cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.27.0"
  sha256 arm:   "9365bd6292342cf433d2fd84970bed4e98711add4f53522b1c89e5e029cb830c",
         intel: "c2e33db2396d06f4c635963a3dcd9e0d2709a34e039de7a26daa9574cc2d4782"

  url "https://www.mulesoft.com/downloads/studio/latest/AnypointStudio-#{version}-macos#{arch}.zip",
      referer: "https://www.mulesoft.com/api/products"
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
