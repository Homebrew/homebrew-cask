cask 'narodmon' do
  version '1.5.5'
  sha256 '86aa3988e68f891312d112721c25f98be9daaee9d3ffe4ea201e8df7e2c4e17f'

  # github.com/niki-timofe/NarodMonOSX was verified as official when first introduced to the cask
  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/#{version}/NarodMon.zip"
  appcast 'https://github.com/niki-timofe/NarodMonOSX/releases.atom',
          checkpoint: 'e30d6ad8a6189c038b6620d0311fa254f7181cc7a4c435bf85050cbe92baa60d'
  name 'NarodMon'
  homepage 'https://narodmon.ru/'

  app 'NarodMon.app'
end
