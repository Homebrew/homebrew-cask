cask 'papers' do
  version '3.4.4,502'
  sha256 'e53fd4982a67c52bd729860fce8b22e4bc6e2ab00c0c3da8bf21384c35ea72cf'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: 'ed6d8734ef89732558a3c9de6826cb74ab95823002f8652c3dc82d6c89adbace'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
