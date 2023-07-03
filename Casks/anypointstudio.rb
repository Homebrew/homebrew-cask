cask "anypointstudio" do
  version "7.15.0"
  sha256 "37f5bca8a63c38061ebc46a539540287ef7186223b05ef93aa8a4eee5c25d3b8"

  vsuffix = (version.patch == "0") ? "GA" : "U#{version.patch}"

  url "https://mule-studio.s3.amazonaws.com/#{version}-#{vsuffix}/AnypointStudio-#{version}-macos64.zip",
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
