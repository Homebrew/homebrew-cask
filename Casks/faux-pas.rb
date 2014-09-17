class FauxPas < Cask
  version :latest
  sha256 :no_check

  url 'http://api.fauxpasapp.com/download_latest'
  appcast 'http://api.fauxpasapp.com/appcast'
  homepage 'http://fauxpasapp.com'

  app 'FauxPas.app'
end
