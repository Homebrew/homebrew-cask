cask "dcv-viewer" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "2022.1.4241"

  if Hardware::CPU.intel?
    sha256 "117c07d73ee22f7c6ff666e357bb02b2365e2ccca4cbf825d7478e57d5854d37"
  else
    sha256 "7d96d4af131e36b0f9e33e24360e3020e715ed0fa78054c33bb1c491cec991c8"
  end

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
