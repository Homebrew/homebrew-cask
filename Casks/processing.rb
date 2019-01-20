cask 'processing' do
  version '3.5'
  sha256 '3d2f4bb8ae05615abd626173ebb26edec19d025c6bbbdd72b96420713f6a88e1'

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
