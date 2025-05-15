cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.0.8004"
  sha256 arm:   "67dfa6f184794373a490d5d7ae1ae00b5db80d710c946f8be1ee210d12e54a05",
         intel: "58be856b45c949672adb811f0e255faa79725f9714e789cec95632bcd9c7796a"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.#{arch}.dmg",
      verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.amazondcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "DCV Viewer.app"

  zap trash: "~/Library/Preferences/com.nicesoftware.dcvviewer.plist"
end
