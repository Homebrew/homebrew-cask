cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.28.0"
  sha256 arm:   "220e428ac78039706e64ca5a77ca510d9829eda1a58db01b6d9cc3e6b072e439",
         intel: "b7415f1ca0dc482508d6f617de59f11270ee0186a0f15ee9aa9a6afa694ff3f5"

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
