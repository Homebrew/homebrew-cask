cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.0.5629"
  sha256 arm:   "d19e407ebd3a5c85ab0b3c82c39b0d7306bd804b943163076822447c78c14066",
         intel: "2119e467865ca07cd16d77276465c9388ce2274499ef06240837e0f0fd8de16e"

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
