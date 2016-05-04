cask 'grandperspective' do
  version '1.5.3'
  sha256 '29538bff682eaef62cd6a1f628f2df98898120175f1fb4c1c3874a4adcc22f56'

  url "http://downloads.sourceforge.net/project/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'http://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: '410091c33d95ad5127924ebb095e60f9553d3db6403339c3c4c9a367099b260d'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :gpl

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
