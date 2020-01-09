cask 'iglance' do
  version '1.4.3'
  sha256 '4326870c6bd97cbb805feb5eb7b76d85df2426fb872bb7e3f8bfc138ab55a5fb'

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
