cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2022.2.4653"
  sha256 arm:   "6cbcf1fa6ef76af9167bf727fc140e8b04f2cd55a29481a0a8f5e749ef1bf71f",
         intel: "769055a7f25922bda51672d1cf00c82d3349c62788d664eed89bf3eafdb369ea"

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
