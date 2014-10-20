class Laplock < Cask
  version 'alpha'
  sha256 '119e94abfe903392e7a469e46cc909a77ecba4b21f1a654d0af94b0ec694a983'

  url 'https://s3-eu-west-1.amazonaws.com/laplock/laplock.app.zip'
  homepage 'http://beta.vyte.in/laplock-www/'
  license :unknown

  app 'laplock.app'
end
