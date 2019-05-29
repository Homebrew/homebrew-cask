cask 'processing' do
  version '3.5.3'
  sha256 'c3156d91e341e1982daf5b95fa9872fbf9b40c50237f270ef714162f88c168b5'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap trash: [
               '~/Library/Processing',
               '~/Preferences/org.processing.app.plist',
               '~/Preferences/processing.app.tools.plist',
             ]
end
