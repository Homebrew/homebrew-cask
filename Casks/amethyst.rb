cask 'amethyst' do
  if MacOS.version <= :mavericks
    version '0.9.10'
    sha256 '82adf42ce6031ab59a3072e607788e73f594ad5f21c7118aabc6c5dafe3d0b47'
  elsif MacOS.version <= :el_capitan
    version '0.10.1'
    sha256 '9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7'
  else
    version '0.11.1'
    sha256 'a8da4818080ec6f3b21f28eb0a0d89beaf030c34add35846c6eaec35e9eb3b75'
  end

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          checkpoint: '769223af0805dceade6fe2335aa7e7628be0a97037da9c449bd24fd83f668fc2'
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
