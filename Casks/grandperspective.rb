cask 'grandperspective' do
  version '2.1.0'
  sha256 'd57d99cc2f7c1a48aa878530ee1e1cebadbe403926cb75832b10d22de9580351'

  # downloads.sourceforge.net/grandperspectiv was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective'
  name 'GrandPerspective'
  homepage 'https://grandperspectiv.sourceforge.io/'

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
