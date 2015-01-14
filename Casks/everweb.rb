cask :v1 => 'everweb' do
  version :latest
  sha256 :no_check

  url 'https://www.ragesw.com/downloads/everweb/everweb.zip'
  homepage 'http://www.everwebapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EverWeb.app'
end
