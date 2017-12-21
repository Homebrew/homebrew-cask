cask 'fork' do
  version '1.0.61'
  sha256 'f52c9ffecb091deef530425a1198b9ae1c64b424715f1fd7a89f29eccaef725b'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'ef2848b7063ab6fa5fee02d6a771727082020f528f286ac217969f0c782f4410'
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
