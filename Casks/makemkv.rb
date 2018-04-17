cask 'makemkv' do
  version '1.12.0'
  sha256 '9b43e950756553e5147c250bb39a6ef61a4b4aaca2a7828a221d49d127faf2f6'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/',
          checkpoint: 'e68f4b03f854fd14bbce6baaf4781e94261d181399d6b3f6dc34f2378f7b9696'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap trash: [
               '~/Library/Preferences/com.makemkv.MakeMKV.plist',
               '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
             ]
end
