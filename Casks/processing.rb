cask 'processing' do
  version '3.2.1'
  sha256 '5fd2310a39da1791a7a3b2a91f7cb8239dd575f1993380df1a2143cc8a134ca6'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '02ad612ff327c10b61eda7c06329a9ba5d80db902ba673131ecce4c6d1505b88'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
