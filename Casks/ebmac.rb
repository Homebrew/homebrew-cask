cask 'ebmac' do
  version '1.44.0'
  sha256 'a6bcef83fe2b188633933833c11b56c6140bb9b856def70c39a2fbd454774e07'

  url "http://ebstudio.info/download/ebpocket/EBMac#{version}.dmg"
  appcast 'http://ebstudio.info/manual/EBMac/'
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  app 'EBMac.app'
end
