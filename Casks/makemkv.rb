cask 'makemkv' do
  version '1.10.1'
  sha256 '39e6bfb950dc2edce333f145b2e69aca26f8215004868790d0343fe45a9e4de6'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'MakeMKV.app'

  zap delete: [
                '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
              ]
end
