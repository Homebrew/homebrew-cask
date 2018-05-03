cask 'darkradiant' do
  version '2.5.0'
  sha256 'a401373b265b66a94abb1c4c77cb7f0f3e11ee11c533658449acccd0bcab47dd'

  # github.com/codereader/DarkRadiant was verified as official when first introduced to the cask
  url "https://github.com/codereader/DarkRadiant/releases/download/#{version}/DarkRadiant.#{version}.app.zip"
  appcast 'https://github.com/codereader/DarkRadiant/releases.atom',
          checkpoint: '6ccd946515845e0432d3dd5b932f12ef6229b5ae43d51af81829250bf966f3a2'
  name 'DarkRadiant'
  homepage 'http://www.darkradiant.net/index.html'

  app 'DarkRadiant 2.5.0.app'

  zap delete: ['~/Library/Saved\ Application\ State/com.brokenglass.DarkRadiant.savedState']
end
