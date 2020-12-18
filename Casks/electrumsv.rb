cask "electrumsv" do
  version "1.3.11"
  sha256 "77c2d24e8328f80d603cf21b18f8f1f3e7cca4308cfb0308479e282fa2e65dbe"

  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg",
      verified: "s3.us-east-2.amazonaws.com/electrumsv-downloads/"
  appcast "https://github.com/electrumsv/electrumsv/releases.atom"
  name "ElectrumSV"
  desc "Desktop wallet for Bitcoin SV"
  homepage "https://electrumsv.io/"

  app "ElectrumSV.app"
end
