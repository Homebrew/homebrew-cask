cask 'poi' do
  version '7.5.2'
  sha256 '0eef145a3b1ceb97a427b324fcdb571b5b9f1fd2e2c6980c4213543297f30f41'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '84868653fb4d7f7fb3d6652cd58d0709fbd8f36d084cd04547c9de47d82765af'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
