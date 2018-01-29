cask 'poi' do
  version '8.1.0'
  sha256 '4e0ad7d51f0c2c8fd0698f89a7f6263eeeed39579ec7729fd1ef01ba21ba90c5'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'e9279f9d31cf64b44e5cf2c1b57f4a8807b5bc9cbd9d33c75c51e9279d52bdf2'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: [
               '~/Library/Application Support/poi/',
               '~/Library/Preferences/org.poooi.poi.helper.plist',
             ]
end
