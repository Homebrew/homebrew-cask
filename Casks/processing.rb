cask :v1 => 'processing' do
  version '3.0b6'
  sha256 '7ce74f88712037f29b41eba17d57c33f34884be154e1a793463e7d328da268b0'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
