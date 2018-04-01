cask 'poi' do
  version '8.2.0'
  sha256 '2bdcf7e07e053d632633e5e71573acdd167a896b028ee68e5c51eba44004ed49'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'e347320518da9d3471fe14b236996c7e06f36a9035ff13d7e450206bd65a855c'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: [
               '~/Library/Application Support/poi/',
               '~/Library/Preferences/org.poooi.poi.helper.plist',
             ]
end
