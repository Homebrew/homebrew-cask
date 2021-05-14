cask "dcv-viewer" do
  version "2021.0.3186"

  if Hardware::CPU.intel?
    sha256 "29f23bd715b504a1315adfea398c00c1a8e55fcea7a8c1cbe75cbebc264ba7a1"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.x86_64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  else
    sha256 "3eed8037a033c8ea27231a580d56483782b5e4289fa23d7dba609d68443d43c3"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.arm64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  end

  name "NICE DCV Viewer"
  desc "Client for NICE DCV remote display protocol"
  homepage "https://www.nice-dcv.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/nice-dcv-viewer-(\d+(?:\.\d+)*)\.x86_64\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "DCV Viewer.app"
end
