cask "electrumsv" do
  version "1.3.16"
  sha256 "d1910e583813bfc8cbe5d815d0df1059a1d144df6d96fc6bc6c0ae3dccc4bc7e"

  url "https://electrumsv-downloads.s3.amazonaws.com/releases/#{version}/ElectrumSV-#{version}.dmg",
      verified: "electrumsv-downloads.s3.amazonaws.com/"
  name "ElectrumSV"
  desc "Desktop wallet for Bitcoin SV"
  homepage "https://electrumsv.io/"

  livecheck do
    url "https://electrumsv.io/download.html"
    regex(/href=.*?ElectrumSV[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ElectrumSV.app"
end
