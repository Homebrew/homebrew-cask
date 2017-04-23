cask 'processing' do
  version '3.3.1'
  sha256 'dffac411d9ea98be868e888d4b282f3ed6454da137f6779f0101a6ab391fd987'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '57cf02861e7246ca2a052527d5d08bf236611e2a8362862605a3be377eed800c'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
