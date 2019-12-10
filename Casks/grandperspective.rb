cask 'grandperspective' do
  version '2.3.0'
  sha256 '3f7b5499ae828816a280eccbf0c50bbd576ff1dc8de6f30796384747e51a7bc3'

  # downloads.sourceforge.net/grandperspectiv was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective'
  name 'GrandPerspective'
  homepage 'https://grandperspectiv.sourceforge.io/'

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
