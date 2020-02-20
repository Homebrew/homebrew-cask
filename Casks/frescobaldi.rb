cask 'frescobaldi' do
  version '3.1.1'
  sha256 '06703429004db47b44b1743ef63e740b3d25048f254e6a27f4b4627bd3671bca'

  # github.com/frescobaldi/frescobaldi was verified as official when first introduced to the cask
  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-x86_64.dmg"
  appcast 'https://github.com/frescobaldi/frescobaldi/releases.atom'
  name 'Frescobaldi'
  homepage 'http://frescobaldi.org/'

  app 'Frescobaldi.app'

  zap trash: '~/Library/Preferences/org.frescobaldi.frescobaldi.plist'
end
