cask 'fork' do
  version '1.0.46.1'
  sha256 '82db8c3263dc33d521a963b7da146e6c7c9d29deabeaf4d159a27a8106818c06'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '7796a4029209e035b9bfe2404ae8ae4d83adb114fdf7e2885b3d13901e61d0d5'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap delete: [
                '~/Library/Application Support/com.DanPristupov.Fork',
                '~/Library/Caches/com.DanPristupov.Fork',
                '~/Library/Preferences/com.DanPristupov.Fork.plist',
                '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
              ]
end
