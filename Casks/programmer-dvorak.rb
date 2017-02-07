cask 'programmer-dvorak' do
  version '1.2b9'
  sha256 '36e51a0ee3ece99de99f2983e14beb415f74d9ae4726093cb60463cc206295e9'

  url "https://www.kaufmann.no/downloads/macos/ProgrammerDvorak-#{version.dots_to_underscores}.pkg.zip"
  appcast 'https://kaufmann.no/roland/dvorak',
          checkpoint: '20a4400a036665bf6639dddca1726093c5c200d08c79e807e6a02918b6802005'
  name 'Programmer Dvorak'
  homepage 'https://kaufmann.no/roland/dvorak/'

  pkg "Programmer Dvorak v#{version.sub(%r{b.*}, '')}.pkg"

  if MacOS.version >= :mavericks
    postflight do
      # clear the layout cache before new layouts are recognized
      File.delete(*Dir.glob('/System/Library/Caches/com.apple.IntlDataCache.le*'))
    end
  end

  uninstall pkgutil: 'com.apple.keyboardlayout.Programmer Dvorak',
            delete:  [
                       '/Library/Keyboard Layouts/Programmer Dvorak.bundle/',
                       # TODO: expand/glob for '/Library/Caches/com.apple.IntlDataCache*',
                       # TODO: expand/glob for '/System/Library/Caches/com.apple.IntlDataCache.le*',
                       # TODO: expand/glob for '/private/var/folders/*/*/-Caches-/com.apple.IntlDataCache.le*',
                     ]
end
