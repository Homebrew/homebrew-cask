cask 'poi' do
  version '10.1.0'
  sha256 '3f5432cd79458988d54a9a17a54e29d0c1489e7553dc93a53927ea3208802848'

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
