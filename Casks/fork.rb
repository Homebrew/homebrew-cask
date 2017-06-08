cask 'fork' do
  version '1.0.48'
  sha256 'fd04d47ecf5d6ededa567c1c7b61c020563143b90f5062610a9734ef7ab32ce1'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '56947e5aa7585accb5a2601206c5eaa1f1957b4cd11fe978146a76428e75be90'
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
