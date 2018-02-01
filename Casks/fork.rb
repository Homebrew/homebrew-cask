cask 'fork' do
  version '1.0.63'
  sha256 '90f0eeeedcc71c776f82ca9d64321a7af93933c5dcea6110b8d956110ed533f6'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'f884df0588d58a3b0300f06082956fafcb78c5fe4e29f2d3ff63906a00ab6792'
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
