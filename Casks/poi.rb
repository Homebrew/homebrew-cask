cask 'poi' do
  version '7.6.0'
  sha256 '5acc3c86d3d4d056a507fa6072c862f263ac54e80899fec9fe9df911d9e3e226'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '7b3ce9df1edaf9deec955c73062a88162a964c8b3e68518631175b74fa183e05'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
