cask 'amethyst' do
  if MacOS.version <= :mavericks
    version '0.9.10'
    sha256 '82adf42ce6031ab59a3072e607788e73f594ad5f21c7118aabc6c5dafe3d0b47'
  elsif MacOS.version <= :el_capitan
    version '0.10.1'
    sha256 '9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7'
  else
    version '0.11.2'
    sha256 '03ffc1fcb65f6e229d18cf8da4ccd38fd35a532a05a9ec4f7847a002e98b6693'
  end

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          checkpoint: 'e8aba6a90fc074ca0a3d0085a9d4d63dc1b70c06be80dd6e035ffc166c58f832'
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
