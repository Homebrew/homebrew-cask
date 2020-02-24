cask 'iglance' do
  version '1.4.3'
  sha256 '0286a3e524069eb1e5764d1796bfc54b6c84f775200ed816af0de89ebde4ab2d'

  url "https://github.com/iglance/iglance/releases/download/v#{version}/iGlance.zip"
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
