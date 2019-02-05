cask 'amethyst' do
  if MacOS.version <= :el_capitan
    version '0.10.1'
    sha256 '9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7'
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  else
    version '0.12.2'
    sha256 '42bbdaa8ce0117435d4e56bcc17b51180e9b2c783d2c37751d0ca4b068f2bca2'
    # github.com/ianyh/Amethyst was verified as official when first introduced to the cask
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst-#{version}.zip"
  end

  appcast 'https://ianyh.com/amethyst/appcast.xml'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst/'

  app 'Amethyst.app'

  uninstall login_item: 'Amethyst'

  zap trash: [
               '~/Library/Caches/com.amethyst.Amethyst',
               '~/Library/Preferences/com.amethyst.Amethyst.plist',
               '~/Library/Cookies/com.amethyst.Amethyst.binarycookies',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*',
             ]
end
