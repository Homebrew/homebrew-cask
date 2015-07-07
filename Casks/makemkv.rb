cask :v1 => 'makemkv' do
  version '1.9.4'
  sha256 '4bb32f9690b3dec8233047cf49eb05652b82b2a212f196dd612ceb7f6415a389'

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
