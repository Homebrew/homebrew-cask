cask 'iglance' do
  version 'v1.3.1'
  sha256 '0d81a4ee593cfac50162aa61156ee490218f75a1c8349bcd906825774debbc13'

  url "https://github.com/iglance/iglance/releases/download/#{version}/iGlance.dmg"
  appcast 'https://github.com/iglance/iglance/releases.atom'
  name 'iGlance'
  homepage 'https://github.com/iglance/iGlance'

  app 'iGlance.app'

  zap trash: [
               '~/Library/Caches/io.iglance.iGlance',
               '~/Library/Preferences/io.iglance.iGlance.plist',
             ]
end
