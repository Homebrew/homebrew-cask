cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.0.5483"
  sha256 arm:   "50144d32544413048835135bd95b145f8f181ecce94030625b4b97c721331626",
         intel: "fec8c0c521df142e1c095216079f92cb95e60831887b6f9ee3a4ef904d2d89af"

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
