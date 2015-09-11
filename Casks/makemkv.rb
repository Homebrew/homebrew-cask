cask :v1 => 'makemkv' do
  version '1.9.5'
  sha256 '091a7ae803296783f018682bda2099d53a3d4fff61560836888ac4e73607a75e'

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
