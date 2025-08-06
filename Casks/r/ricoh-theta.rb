cask "ricoh-theta" do
  version "3.21.0"
  sha256 "4c1d58b4bb1087c9129b99ac9cce1ff4cdc0439d1fa269b683b7f8b9e608f7a3"

  url "https://theta360-statics.s3.amazonaws.com/app/viewer/SphericalViewerUpdate/RICOH%20THETA.#{version}.app.zip",
      verified: "theta360-statics.s3.amazonaws.com/app/viewer/"
  name "RICOH THETA"
  desc "Companion software for 360 degree cameras"
  homepage "https://theta360.com/en/support/download/pcmac/"

  livecheck do
    url "https://theta360-statics.s3.amazonaws.com/app/viewer/SphericalViewerUpdate/latest-mac.yml"
    strategy :electron_builder
  end

  app "RICOH THETA.app"

  zap trash: [
    "~/Library/Application Support/RicohTheta",
    "~/Library/Logs/RicohTheta",
    "~/Library/Preferences/com.ricoh.thetasphericalviewer.plist",
    "~/Library/Saved Application State/com.ricoh.thetasphericalviewer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
