class Laplock < Cask
  version 'latest'
  sha256 :no_check

  url 'https://s3-eu-west-1.amazonaws.com/laplock/laplock.app.zip'
  homepage 'http://beta.vyte.in/laplock-www/'
  license :gratis

  app 'laplock.app'
end
