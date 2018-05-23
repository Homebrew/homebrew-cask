cask 'monogame' do
  version '3.6'
  sha256 '2a948ff5a6e197c9487ec33b0c1cc9943d1f04b61ed15f25cf3942f90e319fc2'

  url "http://www.monogame.net/releases/v#{version}/MonoGame.pkg"
  name 'MonoGame'
  homepage 'http://www.monogame.net/'

  pkg 'MonoGame.pkg'

  uninstall pkgutil: 'com.monogame.*',
            delete:  [
                       '/Library/Frameworks/MonoGame.framework',
                       '/usr/local/bin/mgcb',
                       '/usr/local/bin/monogame-uninstall',
                     ]
end
