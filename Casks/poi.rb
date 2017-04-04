cask 'poi' do
  version '7.5.1'
  sha256 '38cfdcf542ae063f25774a65f118ac27b2af375dc564e5659e654804e6e2c4a3'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'f5244514ffd9d5f72b6a15aec75a264f1fdb304fb621153c32f0733a74aad64c'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
