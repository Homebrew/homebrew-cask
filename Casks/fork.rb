cask 'fork' do
  version '1.0.59'
  sha256 '20a0cb6dfd74cdc9e5c9c6da904c3513a06eeb02625f402bdc7ba8f7870bf690'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '7bf5d999501cc8bf550178c7add8421ae95ea66f778813c65467196558e75986'
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
