cask 'makemkv' do
  version '1.9.9'
  sha256 '062cecc78b799815d24b256b335a63ee9d2273a851b9b34afb884ed3d73b917d'

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
