cask 'ebmac' do
  version '1.45.0'
  sha256 '969248c8c9caec20d131a7f2da263f4a2acc5e4ac510de9bcb3c0a664711f8ff'

  url "http://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  appcast 'http://ebstudio.info/manual/EBMac/'
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  app 'EBMac.app'
end
