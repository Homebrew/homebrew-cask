cask 'fork' do
  version :latest
  sha256 :no_check

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: 'f4209e679946a2ad3952aa5cea97c51b377b3f6c9ab78856d5a0c9c436306a42'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap delete: [
                '~/Library/Application Support/com.DanPristupov.Fork',
                '~/Library/Preferences/com.DanPristupov.Fork.plist',
              ]
end
