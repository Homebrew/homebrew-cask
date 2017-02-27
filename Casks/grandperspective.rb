cask 'grandperspective' do
  version '1.9.0'
  sha256 '26d0130468ef900f2fdb07c14a381b890c8f04e0f9118d2be3fcb3bd27dafc28'

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: 'fe44b3f5d53b9ef633efe485dbfdd7d74b96e3fe164671a111c7443294cb720a'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
