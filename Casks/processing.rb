cask 'processing' do
  version '3.3.4'
  sha256 '65aaa629b04b37976b456e8834de1c5c7f19fb92cb94b6496b0a8222f627e6b2'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '60699238aa599f5c023d6f8d485a2f72f6c85e468b95183d069eb79a9361a7c9'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap trash: '~/Library/Processing/preferences.txt'
end
