cask 'ebmac' do
  version '1.44.1'
  sha256 '5aec486f353eaaf6650818b4fbf9114944fbda0feb28d3162b06704ad0511b6a'

  url "http://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  appcast 'http://ebstudio.info/manual/EBMac/'
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  app 'EBMac.app'
end
