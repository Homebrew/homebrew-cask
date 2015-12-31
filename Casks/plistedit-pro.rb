cask 'plistedit-pro' do
  version '1.8.2'
  sha256 'd114975f724726189afbd8ac9f7113ff8c6de303ba7b892ce633b50f0951be49'

  url 'http://www.fatcatsoftware.com/plisteditpro/PlistEditPro.zip'
  name 'PlistEdit Pro'
  homepage 'http://www.fatcatsoftware.com/plisteditpro/'
  license :freemium

  app 'PlistEdit Pro.app'

  zap :delete => [
    '~/Library/Preferences/com.fatcatsoftware.pledpro.plist',
    '~/Library/Application Support/PlistEdit Pro'
  ]

  caveats 'After the 14 day trial period, files can still be opened but can no longer be saved.'
end
