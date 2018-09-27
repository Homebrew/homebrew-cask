cask 'monogame' do
  version '3.7'
  sha256 'fa8fa17f49222faaa8e4e3b61fc53a684a5f1f5736775596c8c0deca02117667'

  url "https://github.com/MonoGame/MonoGame/releases/download/v3.7/MonoGame.pkg"
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
