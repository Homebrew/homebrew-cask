cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.0.14405"
  sha256 arm:   "b1acbc3c67c84d2607257be331eebcf2850dc21d80417d0692a87edbec1294b2",
         intel: "9d73f973ec14a7f5245f8a2771b77eb0e6a26521da5d55c5cd652bf059b42993"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.amazondcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on :macos

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end
