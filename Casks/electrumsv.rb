cask "electrumsv" do
  version "1.4.0b1"
  sha256 "816bf0cdcbd26edeb7854c636401874352798a9a6f5f631d72f547f474ddb0dc"

  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg",
      verified: "s3.us-east-2.amazonaws.com/electrumsv-downloads/"
  name "ElectrumSV"
  desc "Desktop wallet for Bitcoin SV"
  homepage "https://electrumsv.io/"

  livecheck do
    url "https://github.com/electrumsv/electrumsv"
    strategy :git
  end

  app "ElectrumSV.app"
end
