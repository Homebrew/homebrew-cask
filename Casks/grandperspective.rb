cask 'grandperspective' do
  version '1.7.0'
  sha256 '08fddd88d208f0892c7d8edcb74974a1c798e588266f406fedabb56239f38e0b'

  url "http://downloads.sourceforge.net/project/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'http://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: 'e5110e1cd2f6e057dc93fe07fa5aa7df48820232c11af102392d6b61f79ce2d9'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :gpl

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
