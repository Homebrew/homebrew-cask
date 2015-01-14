cask :v1 => 'chronicle' do
  version :latest
  sha256 :no_check

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml'
  homepage 'http://chronicleapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Chronicle.app'
end
