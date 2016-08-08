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
      version '3.3'
      sha256 'a856e3e08af2ae972582c3a75403086413295d1a38d86a3e2d5f6abff7505fdd'
      appcast 'https://freemacsoft.net/appcleaner/Updates.xml',
              checkpoint: '63e0e7e6bfabfe3edef0e5e2ce454b6abf25a3145494007bfb4f20c2f873b051'
    end
    url "https://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  end

  name 'AppCleaner'
  homepage 'https://www.freemacsoft.net/appcleaner/'
  license :gratis

  depends_on macos: '>= :tiger'

  app 'AppCleaner.app'

  zap delete: [
                '~/Library/Caches/net.freemacsoft.AppCleaner',
                '~/Library/Preferences/net.freemacsoft.AppCleaner.plist',
                '~/Library/Saved Application State/net.freemacsoft.AppCleaner.savedState',
              ]
end
