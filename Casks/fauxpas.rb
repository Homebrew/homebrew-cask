cask :v1 => 'fauxpas' do
  version :latest
  sha256 :no_check

  url 'http://api.fauxpasapp.com/download_latest'
  appcast 'http://api.fauxpasapp.com/appcast'
  homepage 'http://fauxpasapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'FauxPas.app'
end
