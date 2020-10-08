cask "electrumsv" do
  version "1.3.7"
  sha256 "d9b127fc61c35741e472ccc76927ceca8c0882fda66e54374f4265aa250e165c"

  # s3.us-east-2.amazonaws.com/electrumsv-downloads/ was verified as official when first introduced to the cask
  url "https://s3.us-east-2.amazonaws.com/electrumsv-downloads/releases/#{version}/ElectrumSV-#{version}.dmg"
  appcast "https://github.com/electrumsv/electrumsv/releases.atom"
  name "ElectrumSV"
  desc "Desktop wallet for Bitcoin SV"
  homepage "https://electrumsv.io/"

  app "ElectrumSV.app"
end
