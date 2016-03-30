cask 'grandperspective' do
  version '1.5.1'
  sha256 '92204458042a337c1091879e167ea95e45cae33a7be16fa6c11e80572c54d135'

  url "http://downloads.sourceforge.net/project/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'http://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: 'd2bb25d2c58ed420ca3c69c157db9702d1a626f2bea14a48a13dc7d9ad6538d2'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :gpl

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
