class Manico < Cask
  version '1.4.1'
  sha256 'e29c4b0ccba830f0296fbec27122b2016c6dae0f76d5635d5d080d2031fe2d88'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-appcast.xml',
          :sha256 => 'c42b1494a355c603ad4eadbc229af7b12814989f6e760e2d67dbdebcbb121178'
  homepage 'http://manico.im/'
  license :unknown

  app 'Manico.app'
end
