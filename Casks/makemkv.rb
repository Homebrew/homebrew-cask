cask 'makemkv' do
  version '1.15.1'
  sha256 'be82a4ef69b0c3a619da07d04c7c0a85678d22f4938e023077bfaa9b802a73d7'

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
