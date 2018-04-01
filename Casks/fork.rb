cask 'fork' do
  version '1.0.64.1'
  sha256 '722f802b98ebff756b2988689e346f518f8b4d3d736c35a9c04b9f2552b6518d'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '8f2971127c89bbe519d0e47581473502f99e2ed1c895d6167222a5d6e3f81708'
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
