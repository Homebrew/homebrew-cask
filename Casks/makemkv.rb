cask 'makemkv' do
  version '1.10.8'
  sha256 'cf8ad4ab285e3ef9b4f26488b77596b3c9ae73da895a859182d8dce914c9820e'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/',
          checkpoint: 'b0b7c1b2208395cc18f1ed9402f6c39a2de4de351972f9cc6107482b6db3147f'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap trash: [
               '~/Library/Preferences/com.makemkv.MakeMKV.plist',
               '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
             ]
end
