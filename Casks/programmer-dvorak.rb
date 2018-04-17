cask 'programmer-dvorak' do
  version '1.2.10'
  sha256 '223d02ea0f269ad58f161dc7ef1009e88ec74fa12578edcd99be86c72a8c7276'

  url "https://kaufmann.no/downloads/macos/ProgrammerDvorak-#{version.dots_to_underscores}.pkg.zip"
  appcast 'https://kaufmann.no/roland/dvorak/macosx.html',
          checkpoint: '83f2c1b9b0b8c25cd8bdabcc1fb393e8366dc7365ef1a4c80ce67a213e5fa16f'
  name 'Programmer Dvorak'
  homepage 'https://kaufmann.no/roland/dvorak/'

  pkg "Programmer Dvorak v#{version.major_minor}.pkg"

  if MacOS.version >= :mavericks
    postflight do
      # clear the layout cache before new layouts are recognized
      system_command '/bin/rm',
                     args: ['-f', '--', '/System/Library/Caches/com.apple.IntlDataCache.le*'],
                     sudo: true
    end
  end

  uninstall pkgutil: 'com.apple.keyboardlayout.Programmer Dvorak',
            delete:  [
                       '/Library/Keyboard Layouts/Programmer Dvorak.bundle/',
                       '/Library/Caches/com.apple.IntlDataCache*',
                       '/System/Library/Caches/com.apple.IntlDataCache.le*',
                       '/private/var/folders/*/*/-Caches-/com.apple.IntlDataCache.le*',
                     ]
end
