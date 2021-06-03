cask "dcv-viewer" do
  version "2021.1.3450"

  if Hardware::CPU.intel?
    sha256 "517dae0934f9c71868195014fd91828b96dea2b6df35cd8cbedab693e1352684"

    url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.x86_64.dmg",
        verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  else
    sha256 "348bef801a5b44806914727efec6cba014c8e1abd70e5d8481831ab3b336b58d"

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
