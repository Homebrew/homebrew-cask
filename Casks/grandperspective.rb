cask 'grandperspective' do
  version '1.5.1'
  sha256 '92204458042a337c1091879e167ea95e45cae33a7be16fa6c11e80572c54d135'

  url "http://downloads.sourceforge.net/project/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'http://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective',
          checkpoint: 'aa3a708f08a2b7f02fd269062bdda983d17c36007bb5fe46b1e11ab3dea07769'
  name 'GrandPerspective'
  homepage 'http://grandperspectiv.sourceforge.net/'
  license :gpl

  app 'GrandPerspective.app'

  zap trash: '~/Library/Preferences/net.sourceforge.grandperspectiv.plist'
end
