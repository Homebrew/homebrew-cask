cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.1.6203"
  sha256 arm:   "10328016d91f27a179074c230f2a9b023489bd76f6a819ac89c8643e3576f60e",
         intel: "57d5c32fc1c2896cab5856b62c7aba8d79a4772bb9d0114eb8e287c3593d7f39"

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
