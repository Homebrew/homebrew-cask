cask 'amethyst' do
  version '0.10'
  sha256 'e154fd5cea7430d3d98c21d3e1f820812c0cb8e0345d49e8823fb5f784dba33c'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          checkpoint: 'd49ecc458c9c5528022f51c661da5d1fbad9699c30365552bde6e96340a74db6'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  accessibility_access true

  app 'Amethyst.app'

  uninstall  login_item: 'Amethyst'

  zap        delete: [
                       '~/Library/Caches/com.amethyst.Amethyst',
                       '~/Library/Preferences/com.amethyst.Amethyst.plist',
                       '~/Library/Cookies/com.amethyst.Amethyst.binarycookies',
                       '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl',
                     ]
end
