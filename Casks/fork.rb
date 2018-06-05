cask 'fork' do
  version '1.0.67.4'
  sha256 '4f10bb1543ec7a4fe71270358ce89373296b1463779a955e965d2f9395edd816'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '84ec63c7dbaa75d07f2d0fd8d98fb750b9005883d70432e4485a8f74f7e7c609'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap trash: [
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
             ]
end
