cask 'poi' do
  version '7.9.1'
  sha256 '5f1156e3f656be6d7dd180da24b3d1443c2d45313be6c0eef3267abd8525702f'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'ee2467e717010b9382dc5949d65b5ef64e3b44fc26ca602f8e4905dfdda5292d'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: '~/Library/Application Support/poi/'
end
