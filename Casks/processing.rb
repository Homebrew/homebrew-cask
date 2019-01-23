cask 'processing' do
  version '3.5.2'
  sha256 '652bbbfbb889328275bbcddc230f165e31845cb9464b27fc22b4f948f7f93c16'

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
