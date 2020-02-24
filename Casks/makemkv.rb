cask 'makemkv' do
  version '1.14.7'
  sha256 '4b43eb13a8328b5d637e7574a566b3e0515ca169f00a5eecbbda6ae8648861e0'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'https://www.makemkv.com/download/'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap trash: [
               '~/Library/Preferences/com.makemkv.MakeMKV.plist',
               '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
             ]
end
