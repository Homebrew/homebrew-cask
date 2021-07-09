cask "electrumsv" do
  version "1.3.13"
  sha256 "c57ed3939216e78c4692f52aeaf18a75bf6f0a07e13f808b20694ebadf5f7306"

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
