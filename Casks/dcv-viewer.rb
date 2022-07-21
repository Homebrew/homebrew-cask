cask "dcv-viewer" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "2022.1.4251"

  if Hardware::CPU.intel?
    sha256 "b2058fc5e2d909f6b5203d2782145f2b8a084b4a5b18323cf6b3eadea5f8e1f7"
  else
    sha256 "73cc916295366cd232a5eedeccf5ea0eb9f9e83bf5179abb0b5864066b291506"
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
