cask 'poi' do
  version '9.0.3'
  sha256 'b3691a03b58f749f33f326f871207262ace2c9e88ba26dfaf681436942fe2305'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: [
               '~/Library/Application Support/poi/',
               '~/Library/Preferences/org.poooi.poi.helper.plist',
             ]
end
