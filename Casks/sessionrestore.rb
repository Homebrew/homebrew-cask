cask 'sessionrestore' do
  version '2.1.6'
  sha256 'e2537a5a4430b9065f49441d84e7f7c34857d6ecd405d208f3dcaed859d17d04'

  url 'https://sweetpproductions.com/products/sessionrestore/SessionRestore.dmg'
  appcast 'https://sweetpproductions.com/products/sessionrestore/appcast.xml'
  name 'SessionRestore'
  homepage 'https://sessionrestore.sweetpproductions.com/'

  auto_updates true

  app 'SessionRestore.app'

  zap trash: [
               '~/Library/Containers/com.sweetpproductions.SessionRestore',
               '~/Library/Containers/com.sweetpproductions.SessionRestore.Extension',
               '~/Library/Group Containers/U928YCMMNK.com.sweetpproductions.SessionRestore',
             ]
end
