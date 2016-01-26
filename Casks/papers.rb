cask 'papers' do
  version '3.4.2,439'
  sha256 '6e22159c30cab70f9157ead8097bff8ec06bdad0e966e4c6bd33d4229b04ffce'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: '700e9e2f2a2b4a90b0c3bc5c346fb8aaf6c1ddee1367571cbdc972522ed1824f'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
