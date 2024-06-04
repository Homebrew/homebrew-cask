cask "anypointstudio" do
  version "7.18.0"
  sha256 "41539682530833666180aee9197970471c57eb5183dee9b4c2b4403e86dab4c3"

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
