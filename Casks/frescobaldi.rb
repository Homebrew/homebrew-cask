cask 'frescobaldi' do
  version '2.20.0'
  sha256 '575910ceaeb6016355dcfac77ab5dcfceca42a7ff84db5f3316030231cb86bfc'

  # github.com/wbsoft/frescobaldi was verified as official when first introduced to the cask
  url "https://github.com/wbsoft/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-x86_64.dmg"
  appcast 'https://github.com/wbsoft/frescobaldi/releases.atom'
  name 'Frescobaldi'
  homepage 'http://frescobaldi.org/'

  app 'Frescobaldi.app'

  zap trash: '~/Library/Preferences/org.frescobaldi.frescobaldi.plist'
end
