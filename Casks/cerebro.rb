cask 'cerebro' do
  version '0.1.0'
  sha256 '0a2acec0d520cd632172c00cabd0a160184dcbc29302eae28478832c930021ca'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/Cerebro.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: 'd0a372db626b46ceb8125c351c69a2733bc84fe82772bda007b91a0f649a1561'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end
