cask 'programmer-dvorak' do
  version '1.2.10'
  sha256 '223d02ea0f269ad58f161dc7ef1009e88ec74fa12578edcd99be86c72a8c7276'

  url "https://www.kaufmann.no/downloads/macos/ProgrammerDvorak-#{version.dots_to_underscores}.pkg.zip"
  appcast 'https://kaufmann.no/roland/dvorak',
          checkpoint: 'c388ca5b4a4b1973521069acaab423d18f68af592a1fb642d5d7d635e3d99286'
  name 'Programmer Dvorak'
  homepage 'https://kaufmann.no/roland/dvorak/'

  pkg "Programmer Dvorak v#{version.major_minor}.pkg"

  if MacOS.version >= :mavericks
    postflight do
      # clear the layout cache before new layouts are recognized
      system_command '/bin/rm',
                     args: ['-rf', '--', '/System/Library/Caches/com.apple.IntlDataCache.le*'],
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
