class ProgrammerDvorak < Cask
  url 'http://www.kaufmann.no/downloads/macos/ProgrammerDvorak-1_2b9.pkg.zip'
  homepage 'http://kaufmann.no/roland/dvorak/'
  version '1.2b9'
  sha256 '36e51a0ee3ece99de99f2983e14beb415f74d9ae4726093cb60463cc206295e9'
  install 'Programmer Dvorak v1.2.pkg'
  uninstall :pkgutil => 'com.apple.keyboardlayout.Programmer Dvorak',
            :files => [
                        '/Library/Keyboard Layouts/Programmer Dvorak.bundle/',
                      ]
end
