cask 'licecap' do
  version '1.25'
  sha256 '0ed33667b3e19ee47fc09b3619499816e229bc678884fd5c27e24e785472f6ba'

  url "http://www.cockos.com/licecap/licecap#{version.no_dots}.dmg"
  name 'LICEcap'
  homepage 'http://www.cockos.com/licecap/'

  app 'LICEcap.app'
end
