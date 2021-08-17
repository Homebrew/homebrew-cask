cask "dcv-viewer" do
  version "2021.1.3590"

  if Hardware::CPU.intel?
    sha256 "b3c3a98d22fd6ba9cac59874c923eb3c9e4bd9d8c3239570cb5194b7df5bca95"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.x86_64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  else
    sha256 "32fbbe5b2621c0414814367af0930ae1a63608e14fc3ecd0e48b24e575d58437"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.arm64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  end

  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.nice-dcv.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/nice-dcv-viewer[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "DCV Viewer.app"
end
