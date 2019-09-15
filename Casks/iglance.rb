cask 'iglance' do
  version '1.3.6'
  sha256 'c60b4c74c83ae3d44377501fcfcc432d064c394c366673e70d6af421527181a1'

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
