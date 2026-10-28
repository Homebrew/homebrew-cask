cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.0.14555"
  sha256 arm:   "c52414b13832d8c7583440e499864a59163165545e897044f4b48090859fca05",
         intel: "6ac566bac142047212e026097a3e52aa8146e9544b3cdc244a555c6fbbdb66a6"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.amazondcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :sonoma

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end
