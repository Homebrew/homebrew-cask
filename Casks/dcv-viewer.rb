cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.0.5388"
  sha256 arm:   "aa664184eb59becee53d6ae6ee6fd132410945aa0bae0b97ede0271a1b89844e",
         intel: "5d31d07a0a895a08473ebfac901b2f24ecb4f783e0921f4599f3ce02e3f70256"

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
