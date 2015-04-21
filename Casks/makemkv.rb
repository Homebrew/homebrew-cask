cask :v1 => 'makemkv' do
  version '1.9.2'
  sha256 '9eedd88c6ab549262a4aac661a6bb640ae59de4082cda343dba63f3c84a1a90c'

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
