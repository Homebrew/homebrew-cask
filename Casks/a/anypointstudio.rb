cask "anypointstudio" do
  version "7.17.0"
  sha256 "9235c1d315ad31a6189baab480bb109756a550874e988d54d6d01a940d9b5146"

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
