cask 'makemkv' do
  version '1.10.3'
  sha256 'c6a0b04a498a95c1b73f4a52ebe504c750b2610edc4505bd1fbab7c801440f04'

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
