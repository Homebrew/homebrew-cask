cask 'makemkv' do
  version '1.10.4'
  sha256 'f5b959d2fbd0040a8b0c67c8ba945b9b5c30002d5e5ed5f89b13518ee05a7a3a'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap delete: [
                '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
              ]
end
