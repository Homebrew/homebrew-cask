cask 'licecap' do
  version '1.25'
  sha256 '0ed33667b3e19ee47fc09b3619499816e229bc678884fd5c27e24e785472f6ba'

  url "http://www.cockos.com/licecap/licecap#{version.no_dots}.dmg"
  appcast 'http://www.cockos.com/licecap/',
          checkpoint: '507aa808788cad8ecfa938a3a839c67164a25d37d166cb7972c7cf7016a37a13'
  name 'LICEcap'
  homepage 'http://www.cockos.com/licecap/'

  app 'LICEcap.app'
end
