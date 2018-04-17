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
    version '0.12.0'
    sha256 '7425304f643b67b88b7e851595cdd89bbc58bb7361f7c2dc35239d2ee5569af4'
    # github.com/ianyh/Amethyst was verified as official when first introduced to the cask
    url "https://github.com/ianyh/Amethyst/releases/download/v#{version}/Amethyst-#{version}.zip"
  end

  appcast 'https://ianyh.com/amethyst/appcast.xml',
          checkpoint: '4bfc1fb4b264b2508b3f33dca188a22264ef196598dcd16c08219f1c55f8f0c6'
  name 'Amethyst'
  homepage 'https://ianyh.com/amethyst/'

  accessibility_access true

  app 'Amethyst.app'

  uninstall login_item: 'Amethyst'

  zap trash: [
               '~/Library/Caches/com.amethyst.Amethyst',
               '~/Library/Preferences/com.amethyst.Amethyst.plist',
               '~/Library/Cookies/com.amethyst.Amethyst.binarycookies',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.amethyst.amethyst.sfl*',
             ]
end
