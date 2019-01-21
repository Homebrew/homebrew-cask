cask 'processing' do
  version '3.5.1'
  sha256 '889a2f4a8b328a28e48146375ef238c679fc235609c808f8b457508995754708'

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
