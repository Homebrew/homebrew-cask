cask 'makemkv' do
  version '1.9.8'
  sha256 'f7c15b1f4e8688e1dd02e239da06bde0191b92c9e8e2b66b6efbc0b01d7ee209'

  url "http://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  name 'MakeMKV'
  homepage 'http://www.makemkv.com/'
  license :freemium

  app 'MakeMKV.app'

  zap :delete => [
                 '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                 '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
                 ]

  depends_on :macos => '>= :snow_leopard'
end
