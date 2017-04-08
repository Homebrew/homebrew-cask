cask 'makemkv' do
  version '1.10.5'
  sha256 '6e30e41ed87f9a472f2139f45b76bed46e0bb456cd378c17b548bec7a46d0b66'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/',
          checkpoint: 'afa496ccd8c5704d39446a98fc23015ebde96be6c4f349f3f283552e4a5367a5'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap delete: [
                '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
              ]
end
