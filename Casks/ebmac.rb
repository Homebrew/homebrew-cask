cask 'ebmac' do
  version '1.43.2'
  sha256 '5ab3a9ad75a66ffcc8c96a97707dfd978bc779a7b9b65435762593cab2cd4fe3'

  url "http://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  depends_on macos: '>= :snow_leopard'

  app 'EBMac.app'
end
