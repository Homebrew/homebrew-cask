cask 'grandperspective' do
  version '1.7.0'
  sha256 '08fddd88d208f0892c7d8edcb74974a1c798e588266f406fedabb56239f38e0b'

  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: 'baf67458f7cb1d3617875d37ad1c2581dc30f6d6f091ecdc065739aeecdc3d6b'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :gpl

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
