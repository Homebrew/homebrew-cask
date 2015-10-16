cask :v1 => 'processing' do
  version '3.0'
  sha256 '2a9d07733f1d244b19074bf5bc4278a9d257c9eb6a6269116cc9e412be16faba'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
