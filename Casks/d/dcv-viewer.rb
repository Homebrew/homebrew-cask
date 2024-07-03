cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.1.6703"
  sha256 arm:   "d97fd354175f0a6315f66539d70717bd0c02e80332aeb50f6226fac2fa5437fe",
         intel: "ffc7c74a0e3729043fef37b2de30930804030009b06959ac29a04fb740bb5568"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg",
      verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.nice-dcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end
