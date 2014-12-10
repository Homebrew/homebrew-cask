cask :v1 => 'processing' do
  version '2.2.1'
  sha256 '8c237b3eb50626e8ffc648bfdeddaa18ceffbd6a48f8fec77a8eab5b774971fc'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  homepage 'http://processing.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
