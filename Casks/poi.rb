cask 'poi' do
  version '7.7.0'
  sha256 'e0ba73f8dc86af22b5311d349f65b26348321d7eb2c64036f31f6a4b2e9c9d1d'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '5f5d84d8bbb2a815e2c7a171105e1ea8ae29da16b6cc079c8802d5848bb89023'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
