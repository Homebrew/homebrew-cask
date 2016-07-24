cask 'makemkv' do
  version '1.10.0'
  sha256 'fc0f403c24b687d741780578be50832e14b199ba5ae9119020ec997804e65dd2'

  url "http://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name 'MakeMKV'
  homepage 'http://www.makemkv.com/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'MakeMKV.app'

  zap delete: [
                '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
              ]
end
