cask 'electrumsv' do
  version '1.0.0'
  sha256 'eb709a03fb532ae70c1a70799f46ead22210faf7388c4792249abd0337f77b06'

  url "https://electrumsv.io/download/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
