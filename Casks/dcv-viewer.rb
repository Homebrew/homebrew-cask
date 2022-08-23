cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2022.1.4279"
  sha256 arm:   "9d9929a66d8e9e7b43e1e455c246f4da465a28945880416efb35e70066fea33a",
         intel: "036bab4870ffb2f0240f8813910a1f72e3718b4fa552cda8311f20cd8ed25e7d"

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
