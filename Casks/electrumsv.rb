cask "electrumsv" do
  version "1.3.5"
  sha256 "036c7b64667529c7e1d2fe2e9220eb6a6e059e4c80884eebbec623b6d31228fe"

  # s3.us-east-2.amazonaws.com/electrumsv-downloads/ was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg"
  appcast "https://github.com/electrumsv/electrumsv/releases.atom"
  name "ElectrumSV"
  homepage "https://electrumsv.io/"

  app "ElectrumSV.app"
end
