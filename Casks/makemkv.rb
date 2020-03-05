cask 'makemkv' do
  version '1.15.0'
  sha256 'ad4323d5141a82f11b36f1ad3f54b0f201eedfbd4597ee604fed4b616f2d06b0'

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
