cask 'makemkv' do
  version '1.10.7'
  sha256 '5962073423e263ea4689b64e0b8b3300520050cdff21fc95d89322166cf394b8'

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast 'http://www.makemkv.com/download/',
          checkpoint: '827f1d756501155f5e9cc88b616cbf595085e9d42aebdfaed58c0e9d56f72bcb'
  name 'MakeMKV'
  homepage 'https://www.makemkv.com/'

  app 'MakeMKV.app'

  zap trash: [
               '~/Library/Preferences/com.makemkv.MakeMKV.plist',
               '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
             ]
end
