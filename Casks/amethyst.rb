cask 'amethyst' do
  version '0.9.10'
  sha256 '82adf42ce6031ab59a3072e607788e73f594ad5f21c7118aabc6c5dafe3d0b47'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => '6290a2d45067fcce7ce69b24c39367cbd00d10993ff3e980aec5b048fc6b52d8'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  accessibility_access true

  app 'Amethyst.app'

  uninstall  :login_item => 'Amethyst'

  zap        :delete => [
                          '~/Library/Caches/com.amethyst.Amethyst',
                          '~/Library/Preferences/com.amethyst.Amethyst.plist',
                          '~/Library/Cookies/com.amethyst.Amethyst.binarycookies',
                          '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl',
                        ]
end
