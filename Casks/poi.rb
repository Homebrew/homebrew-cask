cask 'poi' do
  version '7.9.0'
  sha256 'e5cef1c67f7a27424bb483dc8ad89f09f3f97b922cecbe18360448eff8ee65f9'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '991485a28130a1ead77efea2da6e1ca581b1c39f8808c7c91fb9ad8302ae929b'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: '~/Library/Application Support/poi/'
end
