cask 'cuttle' do
  version '1.1'
  sha256 '7133beb24c3a37fe13f12d0b8110f1fcaf541d80e938cfaafb37a4d47bfcca15'

  url "https://github.com/oakmac/cuttle/releases/download/v#{version}/cuttle-v#{version}-mac.dmg"
  appcast 'https://github.com/Swordfish90/cool-retro-term/releases.atom',
          checkpoint: 'eb9ed3cb84563876d607d15d5d262e750d5d9210b6ee8ea1621ea0e261b0c646'
  name 'CUTTLE'
  homepage 'https://github.com/oakmac/cuttle'

  app 'Cuttle.app'
end
