cask 'licecap' do
  version '1.28'
  sha256 '130c8cd34b0048297433df9bce5dbc1b52e0e5b3d798c2cbc5be68773f3adbc6'

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
