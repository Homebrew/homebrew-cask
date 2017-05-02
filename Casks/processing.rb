cask 'processing' do
  version '3.3.3'
  sha256 '4ae4d7bc7f8a0db711d6908e4f9d80b97132d08ceac6b7cd6ab43e2d8546a840'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'fe4db0a7b4e5551f953f4731733bce3563bcc4f5e047a7effbee4db81821c0f9'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
