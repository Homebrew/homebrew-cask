cask 'amethyst' do
  if MacOS.version <= :mavericks
    version '0.9.10'
    sha256 '82adf42ce6031ab59a3072e607788e73f594ad5f21c7118aabc6c5dafe3d0b47'
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  elsif MacOS.version <= :el_capitan
    version '0.10.1'
    sha256 '9fd1ac2cfb8159b2945a4482046ee6d365353df617f4edbabc4e8cadc448c1e7'
    url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  else
    version '0.13.0'
    sha256 '18fd9d2f6da33fd854668f315ee753ebb819219dd4f3b67387a1653252acbd30'
    # github.com/ianyh/Amethyst was verified as official when first introduced to the cask
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst.zip"
  end

  appcast 'https://ianyh.com/amethyst/appcast.xml'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst/'

  auto_updates true

  app 'Amethyst.app'

  uninstall login_item: 'Amethyst'

  zap trash: [
               '~/Library/Caches/com.amethyst.Amethyst',
               '~/Library/Preferences/com.amethyst.Amethyst.plist',
               '~/Library/Cookies/com.amethyst.Amethyst.binarycookies',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*',
             ]
end
