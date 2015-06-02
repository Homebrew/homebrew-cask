cask :v1 => 'makemkv' do
  version '1.9.3'
  sha256 '7d4e966f2b21f77691e9e84b0810e7a0f82edfe35016a961caf6f5d26e8a2e50'

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
