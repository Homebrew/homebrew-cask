class Chronicle < Cask
  version :latest
  sha256 :no_check

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
