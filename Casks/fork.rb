cask 'fork' do
  version '1.0.57.6'
  sha256 '78ac3fe54b407e4606605c5d757fe076ff13444c000a285f87008a575e5849de'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '43486b1530df29b89614a82fa85c1dc83faec9a74c9c31e47082c4d8abc93c2d'
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
