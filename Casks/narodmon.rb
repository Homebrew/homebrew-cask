cask 'narodmon' do
  version '3.0.5'
  sha256 '57081d4823f607f1417b243df83aeb189cd26027e899defcd3193f8fb6d2ebb1'

  # github.com/niki-timofe/NarodMonOSX was verified as official when first introduced to the cask
  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/v#{version}/NarodMon.zip"
  appcast 'https://github.com/niki-timofe/NarodMonOSX/releases.atom'
  name 'NarodMon'
  homepage 'https://narodmon.ru/'

  app 'Народный мониторинг.app'
end
