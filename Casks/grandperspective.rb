cask 'grandperspective' do
  version '1.9.1'
  sha256 '1750c37590e451278cf2d93a521ff7e56572c417a3afcf3204961f5b0e8b5ceb'

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: 'bc448794e57b511c93a061bc25aec699ab09bfc54f618c44bc7ba91e31ab76c6'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
