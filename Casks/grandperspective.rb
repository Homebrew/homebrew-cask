cask 'grandperspective' do
  version '1.8.1'
  sha256 '0a01e38cf9344695f5bcf8309429ba72ad760ced719e65932dd3fab2d77744d0'

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: '75d46fbcab208058ffeba8810d6e95e5de2caced796d408a8abf942a50f196ba'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
