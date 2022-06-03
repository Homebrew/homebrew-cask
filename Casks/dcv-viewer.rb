cask "dcv-viewer" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "2022.0.4131"

  if Hardware::CPU.intel?
    sha256 "9e0af1027a876a50c4e937b1239e90b03c470e5829409c6ff9cb451cef2b827a"
  else
    sha256 "71e13832d54e3386de3d5548bfaefe5b18d08d344d1f31d346a6f1ddc34701c6"
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
