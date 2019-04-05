cask 'grandperspective' do
  version '2.2.0'
  sha256 'debf6e069338793f8f4739b8c27e2bc9b00ff4efea365e50ad87ecf845e06532'

  # downloads.sourceforge.net/grandperspectiv was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective'
  name 'GrandPerspective'
  homepage 'https://grandperspectiv.sourceforge.io/'

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
