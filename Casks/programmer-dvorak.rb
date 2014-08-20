class ProgrammerDvorak < Cask
  version '1.2b9'
  sha256 '36e51a0ee3ece99de99f2983e14beb415f74d9ae4726093cb60463cc206295e9'

  url 'http://www.kaufmann.no/downloads/macos/ProgrammerDvorak-1_2b9.pkg.zip'
  homepage 'http://kaufmann.no/roland/dvorak/'

  install 'Programmer Dvorak v1.2.pkg'
  uninstall :pkgutil => 'com.apple.keyboardlayout.Programmer Dvorak',
            :files => [
                        '/Library/Keyboard Layouts/Programmer Dvorak.bundle/',
                        # note: these will not work because the glob will not be expanded
                        '/Library/Caches/com.apple.IntlDataCache*',
                        '/System/Library/Caches/com.apple.IntlDataCache.le*',
                        '/private/var/folders/*/*/-Caches-/com.apple.IntlDataCache.le*'
                      ]
  if MacOS.version >= :mavericks
    after_install do
      # clear the layout cache before new layouts are recognized
      # note: this will not work because the glob will not be expanded
      system '/bin/rm', '-f', '--', '/System/Library/Caches/com.apple.IntlDataCache.le*'
    end
  end
end
