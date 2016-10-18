cask 'appcleaner' do
  if MacOS.version <= :leopard
    version '1.2.2'
    sha256 '58972cb1b8256d6de1a11ed225c94b240c2923f1c814975ccbcb94806fc439dc'
    url "https://freemacsoft.net/downloads/AppCleaner#{version}.dmg"
  else
    if MacOS.version <= :mavericks
      version '2.3'
      sha256 '69da212e2972e23e361c93049e4b4505d7f226aff8652192125f078be7eecf7f'
    else
      version '3.4'
      sha256 '0c60d929478c1c91e0bad76d3c04795665c07a05e45e33321db845429c9aefa8'
      appcast 'https://freemacsoft.net/appcleaner/Updates.xml',
              checkpoint: '2743c995613fd53c24e271384e2de79eb781dd4d21fd32627e3ac244704e1b04'
    end
    url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  end

  name 'AppCleaner'
  homepage 'https://www.freemacsoft.net/appcleaner/'

  depends_on macos: '>= :tiger'

  app 'AppCleaner.app'

  zap delete: [
                '~/Library/Caches/net.freemacsoft.AppCleaner',
                '~/Library/Preferences/net.freemacsoft.AppCleaner.plist',
                '~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState',
              ]
end
