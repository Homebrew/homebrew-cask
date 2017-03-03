cask 'poi' do
  version '7.4.1'
  sha256 '547d68309ffc5f5d1c67a30b2056ad2e2fa83e7ac5f6352f8f9ab24b3aefd637'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'f774eb586b1627f5ee24238b68202d1571c1d793d96f49f2561371671ffd0b3e'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
