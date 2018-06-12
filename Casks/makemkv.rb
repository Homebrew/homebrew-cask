cask 'makemkv' do
  version '1.12.2'
  sha256 '1758f666eb9be61ae9782c9e5150eeca39205892a8430f70dd8e34f065f19a30'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap trash: [
               '~/Library/Preferences/com.makemkv.MakeMKV.plist',
               '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
             ]
end
