cask 'makemkv' do
  version '1.10.10'
  sha256 'd8d8744be98f7c92abb45c25cf3784cd471cfaa62fd3e9ecd91430a501f7e18f'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/',
          checkpoint: '8007a19099fc5ccd24766edaa0096068cff23701992c52140bd876e04842c18f'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap trash: [
               '~/Library/Preferences/com.makemkv.MakeMKV.plist',
               '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
             ]
end
