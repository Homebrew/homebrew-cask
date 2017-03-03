cask 'poi' do
  version '7.4.0'
  sha256 '9033f7a00e439a1f4873dc9a949465a0bfb1bff559bddabe95271653e72cee1e'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}-macos-x64.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '0c0d51a9d63e23eaa67dbf98dbbe7f131083aa0b8fe47330510fe381ed2d23f4'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap delete: '~/Library/Application Support/poi/'
end
