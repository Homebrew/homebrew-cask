cask 'iglance' do
  version '1.3.5'
  sha256 'eed57f2c81522836bdae440d09c970551df9d64faa326df3467f9922c517d48b'

  url "https://github.com/iglance/iglance/releases/download/v#{version}/iGlance.dmg"
  appcast 'https://github.com/iglance/iglance/releases.atom'
  name 'iGlance'
  homepage 'https://github.com/iglance/iGlance'

  depends_on macos: '>= :high_sierra'

  app 'iGlance.app'

  zap trash: [
               '~/Library/Caches/io.iglance.iGlance',
               '~/Library/Preferences/io.iglance.iGlance.plist',
             ]
end
