class Mirador < Cask
  version '1.3beta'
  sha256 'c2c4e2b5c9a9723c99c65894db97fa008fa49def3ede3a2d32426877b5b89351'

  url 'https://github.com/mirador/mirador/releases/download/1.3beta/mirador-macosx-1.3beta.zip'
  homepage 'http://fathom.info/mirador/'
  license :gpl

  app 'Mirador.app'
end
