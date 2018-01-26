cask 'poi' do
  version '8.0.0'
  sha256 'e00353806047e341f99e1c6ca8f6fb1ff67ae6ae6be87edfb8e3a1e391c4e492'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'e52744adc8162dad5fd33281851589989f76ee2a11236fcd2874883b3dbc2def'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: [
               '~/Library/Application Support/poi/',
               '~/Library/Preferences/org.poooi.poi.helper.plist',
             ]
end
