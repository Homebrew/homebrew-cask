cask 'frescobaldi' do
  version '3.1'
  sha256 'c4fe19067a7718ac613654f2d69ac23ec81955993e12d3e4cb3a63865799ef92'

  # github.com/frescobaldi/frescobaldi was verified as official when first introduced to the cask
  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-x86_64.dmg"
  appcast 'https://github.com/frescobaldi/frescobaldi/releases.atom'
  name 'Frescobaldi'
  homepage 'http://frescobaldi.org/'

  app 'Frescobaldi.app'

  zap trash: '~/Library/Preferences/org.frescobaldi.frescobaldi.plist'
end
