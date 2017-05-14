cask 'narodmon' do
  version '3.0.4'
  sha256 '03818b133df820a2005118f49e2a217f2a21389ac9cee748f0a3dcfd7c701242'

  # github.com/niki-timofe/NarodMonOSX was verified as official when first introduced to the cask
  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/v#{version}/NarodMon.zip"
  appcast 'https://github.com/niki-timofe/NarodMonOSX/releases.atom',
          checkpoint: '84a7bc56bc17a28d35492912da1bf94c950e526bb0c4f890d95e183e10f41ae6'
  name 'NarodMon'
  homepage 'https://narodmon.ru/'

  app 'Народный мониторинг.app'
end
