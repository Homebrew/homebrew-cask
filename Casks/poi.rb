cask 'poi' do
  version '7.10.1'
  sha256 '6048228a6e772d71804049752c0c061ef150ff31865dd47e503e57ee0beda325'

  # github.com/poooi/poi was verified as official when first introduced to the cask
  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg"
  appcast 'https://github.com/poooi/poi/releases.atom',
          checkpoint: '162d8738f1ffb78f6ffb522f80c7fd75642cbd2f18f8640ca443d18ab20b20ad'
  name 'poi'
  homepage 'https://poi.io/'

  app 'poi.app'

  zap trash: [
               '~/Library/Application Support/poi/',
               '~/Library/Preferences/org.poooi.poi.helper.plist',
             ]
end
