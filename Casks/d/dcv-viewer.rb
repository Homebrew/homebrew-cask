cask "dcv-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.0.7209"
  sha256 arm:   "29a4efb592aaf07f2e6d09de0cf2dbafb11ab0beb6522bc09a0b5e6e303a9ddb",
         intel: "df49ab8eb10b397048ea5ec8cc031bbf7d678a2dbe4c4dac7d7bfe0e386639f9"

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
