cask 'makemkv' do
  version '1.10.2'
  sha256 'cb2dd115242e2ab0c11aa1e167aa44337094410a621855326c90f6b5dd6f40c7'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  depends_on macos: '>= :snow_leopard'

  app 'MakeMKV.app'

  zap delete: [
                '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
              ]
end
