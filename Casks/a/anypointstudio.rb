cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.26.0"
  sha256 arm:   "04d3316b8175f7482f4b04b4b049a17db48a355bb28c2102cf0358034ff3924d",
         intel: "86e1ac3c75c0d993ee67800af624c6974fa30864ca953b046138dba9c02b859c"

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
