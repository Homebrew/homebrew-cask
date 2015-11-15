cask :v1 => 'processing' do
  version '3.0.1'
  sha256 '1edc0b4a38c21a6e584f62784717b76967cdef14a4d75639c4e572419cd66db5'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  name 'Processing'
  homepage 'https://processing.org/'
  license :gpl

  app 'Processing.app'

  zap :delete => '~/Library/Processing/preferences.txt'
end
