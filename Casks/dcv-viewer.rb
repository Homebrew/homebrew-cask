cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2022.2.5125"
  sha256 arm:   "91588de1e152ec125cfc8526ca78cfcb52a131ffbd6f03158810654fd701f218",
         intel: "e4b4d86a087910178f1fcc3d9dd90e48afd9cc3e151106ebbc5b070e6ca3e7a1"

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
