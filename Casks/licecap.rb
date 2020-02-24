cask 'licecap' do
  version '1.29'
  sha256 '9d12df4946d3247483a1e050279b032320799ee96918f44628b92d862866250f'

  url "https://www.cockos.com/licecap/licecap#{version.no_dots}.dmg"
  appcast 'https://www.cockos.com/licecap/'
  name 'LICEcap'
  homepage 'https://www.cockos.com/licecap/'

  app 'LICEcap.app'

  zap trash: [
               '~/Library/Application Support/LICEcap',
               '~/Library/Preferences/com.cockos.LICEcap.plist',
             ]
end
