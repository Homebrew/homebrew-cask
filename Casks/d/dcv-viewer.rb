cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.0.8846"
  sha256 arm:   "0f7e0d840b87f2f465e57923906c7926fdcd427b557ffb113670cefbb924bf81",
         intel: "22a715f3641873e7f6eb036d582d8c7425fd676d2aef815ccac60ddf9de682b6"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg",
      verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.amazondcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end
