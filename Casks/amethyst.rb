cask 'amethyst' do
  if MacOS.version <= :mavericks
    version '0.9.10'
    sha256 '82adf42ce6031ab59a3072e607788e73f594ad5f21c7118aabc6c5dafe3d0b47'
  elsif MacOS.version <= :el_capitan
    version '0.10.1'
    sha256 '9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7'
  else
    version '0.11.3'
    sha256 '8574e41178714fd52a8e5c8e8e2b580eb3e604b3c4d4579cbf84ff49472c55e8'
  end

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          checkpoint: '260eea33504e9dcc4d535110e727180abc42b0bf28f41ebe0d59613284902de1'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst/'

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
