cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.1.6809"
  sha256 arm:   "bfe892e205a011c617a04ebabeb94b54fab313055e8d7736b51c9b8cf79c2b1b",
         intel: "16a6ae4c541eaf3d47a6d3d8c8ab06a76a215f772656a5e6fb59630d13af3e98"

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
