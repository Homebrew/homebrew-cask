cask 'licecap' do
  version '1.25'
  sha256 '0ed33667b3e19ee47fc09b3619499816e229bc678884fd5c27e24e785472f6ba'

  url "https://www.cockos.com/licecap/licecap#{version.no_dots}.dmg"
  appcast 'https://www.cockos.com/licecap/',
          checkpoint: '3213076943b13521614da283c34456831dc9cf09f74bbf204bb08921dc8aa581'
  name 'LICEcap'
  homepage 'https://www.cockos.com/licecap/'

  app 'LICEcap.app'

  zap trash: [
               '~/Library/Application Support/LICEcap',
               '~/Library/Preferences/com.cockos.LICEcap.plist',
             ]
end
