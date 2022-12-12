cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2022.2.4804"
  sha256 arm:   "67725ce47238c2becc0207abfd4c4abbaa7f44c32ff3f1d21545502f35914559",
         intel: "303bcc7d4f7ff9667ec7a08392336abc25e506ce7c211d0fbccea6c06472a3c3"

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
