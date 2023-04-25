cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.0.5456"
  sha256 arm:   "851748a0facbb0456fb5a20d68537e5b25cad63b567b2d6328b350f587fbc2d6",
         intel: "3a3bb1c8393bde6ee74fbea83b3fa8076596ac859bc87c3893ac11e29ff382a1"

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
