cask 'frescobaldi' do
  version '2.20.0'
  sha256 '575910ceaeb6016355dcfac77ab5dcfceca42a7ff84db5f3316030231cb86bfc'

  # github.com/wbsoft/frescobaldi was verified as official when first introduced to the cask
  url 'https://github.com/wbsoft/frescobaldi/releases/download/v2.20.0/Frescobaldi-2.20.0-x86_64.dmg'
  appcast 'https://github.com/wbsoft/frescobaldi/releases.atom',
          checkpoint: '1edb6cbd5767024e224f7aecda697d206b49a180066180dd3201359cf4f6a598'
  name 'Frescobaldi'
  homepage 'http://frescobaldi.org/'

  app 'Frescobaldi.app'

  zap delete: '~/Library/Preferences/org.frescobaldi.frescobaldi.plist'
end
