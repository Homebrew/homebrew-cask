cask 'makemkv' do
  version '1.10.6'
  sha256 'ccbd1867d56c9fb7fdd132643781c87389e9da498ecadfa218ea84beafe71875'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/',
          checkpoint: '1e5ab1434f79ef7d8721d1b6c3ddd1e618bdf7521434992adecee92ebb58fe9a'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap delete: [
                '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
              ]
end
