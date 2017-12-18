cask 'stellarium' do
  version '0.16.1.2'
  sha256 '52115eee624de8e3a4be5bf017004cef3c2252aa18b70d1cdcb31b1362fb4e7a'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: 'a8730a9e14d676273eb371e3a36c2d7e9a03e2643ea1deb27896668a41fceb62'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
