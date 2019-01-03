cask 'makemkv' do
  version '1.14.2'
  sha256 'f2af9191553b45ba8032ddcd6fad7cd20dc40f6eb27a6f8c91def874b16dd09b'

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
