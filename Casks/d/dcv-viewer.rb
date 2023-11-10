cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.1.6125"
  sha256 arm:   "0ccfaff75d67f61f8fedcf3cdad63a425a5309fa909267352f2ee2a5eb8e7ef9",
         intel: "835587d4d0b6c3ea0e534451c5f5bef1171c6d04880126b05037d537e1a48393"

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
