cask 'processing' do
  version '3.1'
  sha256 '1438404511a0d0b777d8b9f645c2bff4517e3e97cf0670eb16d81e2cb4a98f58'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: '33aec0c31209431f5cfd81c6684ad510aea21ceaf405007279d2af6330c4e5d3'
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
