cask :v1 => 'chronicle' do
  version :latest
  sha256 :no_check

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'
  license :commercial

  app 'Chronicle.app'
end
