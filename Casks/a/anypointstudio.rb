cask "anypointstudio" do
  arch arm: "Arm", intel: "64"

  version "7.23.0"
  sha256 arm:   "057ef254deb53003744ac9304b723877b6e598447f587fa8aae58d874d87d401",
         intel: "2c3a31b24487a96d7b84d43a468a1f353278ad7f18022a5b33d62c7afb3ed9a0"

  url "https://www.mulesoft.com/downloads/studio/latest/AnypointStudio-#{version}-macos#{arch}.zip",
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
