class Kod < Cask
  version '0.0.3'
  sha256 'bbc645f03e3aa49438606f2c874b6773c648e8409a395149492ec000b10d4ddb'

  url 'http://data.hunch.se/kod/kod-0.0.3.zip'
  homepage 'https://github.com/rsms/kod/'

  app 'Kod.app'
  binary 'Kod.app/Contents/SharedSupport/kod'
end
