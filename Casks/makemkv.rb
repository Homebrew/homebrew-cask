cask 'makemkv' do
  version '1.14.4'
  sha256 '346e8cec95c0b4675b31170f534a19e84e15aa2b7c86c8994b5e1b9e2d1e1c60'

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
