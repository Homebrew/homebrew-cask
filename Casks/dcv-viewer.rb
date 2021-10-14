cask "dcv-viewer" do
  version "2021.2.3776"

  if Hardware::CPU.intel?
    sha256 "0d72af77d33d472c9f6523036809e5936f516851d1c788a909674dc857fe0e78"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.x86_64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  else
    sha256 "86061eeacf8c59fa71a08eb00cf65e918193e2007d47224820049431c2b370bb"

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
