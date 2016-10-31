cask 'processing' do
  version '3.2.2'
  sha256 '206eb7954971561333b446a41397674454d435db9cd95162103617504a8c31f1'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'aa3e0e59bf5bd3a4abcb595fd1db75caa29d5ec24ec63f9b69f7e73f09cf4505'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
