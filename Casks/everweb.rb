cask :v1 => 'everweb' do
  version :latest
  sha256 :no_check

  # ragesw.com is the official download host per the vendor homepage
  url 'https://www.ragesw.com/downloads/everweb/everweb.zip'
  name 'EverWeb'
  homepage 'http://www.everwebapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EverWeb.app'
end
