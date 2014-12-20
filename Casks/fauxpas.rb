cask :v1 => 'fauxpas' do
  version :latest
  sha256 :no_check

  url 'http://api.fauxpasapp.com/download_latest'
  appcast 'http://api.fauxpasapp.com/appcast'
  homepage 'http://fauxpasapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FauxPas.app'
end
