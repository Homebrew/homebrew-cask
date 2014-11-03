class Dropshare < Cask
  version :latest
  sha256 :no_check

  url 'https://getdropsha.re/sparkle/Dropshare-latest.zip'
  homepage 'http://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
