cask 'fork' do
  version '1.0.58'
  sha256 '5be85ff34445be9d192c607ec0cca5a0b0870e0035549bf17f080118923b136c'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'e47f58ae2f1bef6d6b8d75ea2df0bb6ee9eb65e7511bb953defe4c41578c2a3a'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap delete: [
                '~/Library/Caches/com.DanPristupov.Fork',
                '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.DanPristupov.Fork',
                '~/Library/Preferences/com.DanPristupov.Fork.plist',
              ]
end
