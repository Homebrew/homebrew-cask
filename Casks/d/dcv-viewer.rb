cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.0.6995"
  sha256 arm:   "21f9542a1809ab4e57876b6d26946c0311a019b83821b6ab18ca5578b6c74705",
         intel: "54d236f9a94feb34e82625cd39c9b7523d00794ea83da8c97059f4df7eeb1f41"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg",
      verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.nice-dcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end
