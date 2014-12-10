cask :v1 => 'programmer-dvorak' do
  version '1.2b9'
  sha256 '36e51a0ee3ece99de99f2983e14beb415f74d9ae4726093cb60463cc206295e9'

  url "http://www.kaufmann.no/downloads/macos/ProgrammerDvorak-#{version.gsub('.','_')}.pkg.zip"
  homepage 'http://kaufmann.no/roland/dvorak/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Programmer Dvorak v1.2.pkg'

  uninstall :pkgutil => 'com.apple.keyboardlayout.Programmer Dvorak',
            :delete => [
                        '/Library/Keyboard Layouts/Programmer Dvorak.bundle/',
                        # todo these will not work because the glob will not be expanded
                        '/Library/Caches/com.apple.IntlDataCache*',
                        '/System/Library/Caches/com.apple.IntlDataCache.le*',
                        '/private/var/folders/*/*/-Caches-/com.apple.IntlDataCache.le*',
                       ]
  if MacOS.version >= :mavericks
    postflight do
      # clear the layout cache before new layouts are recognized
      # todo this will not work because the glob will not be expanded
      system '/bin/rm', '-f', '--', '/System/Library/Caches/com.apple.IntlDataCache.le*'
    end
  end
end
