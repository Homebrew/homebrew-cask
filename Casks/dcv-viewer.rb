cask "dcv-viewer" do
  version "2021.1.3473"

  if Hardware::CPU.intel?
    sha256 "1c06ec60ae147e379cad3fcb6ffce9ee545b30084d04b765e7f0e26e89db839c"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.x86_64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  else
    sha256 "de6ca6683097e04210b278ccdd1e68c28ae526d2b116d99875d83c0b13211f83"

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
