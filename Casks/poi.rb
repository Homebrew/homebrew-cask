cask 'poi' do
  version '7.10.0'
  sha256 '0c80361ca4a66f6c5b90ee0f9a03d2fd7cc0ab98561ca50c88f48cb375bfd12d'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: 'e877afee72dd7da60b18d3c650b72d79ba1e80b6611a5bb84bd51de4cc64be54'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: [
               '~/Library/Application Support/poi/',
               '~/Library/Preferences/org.poooi.poi.helper.plist',
             ]
end
