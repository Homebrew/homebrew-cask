cask 'chronicle' do
  version '8.0.0'
  sha256 '3f28357cc22e64c779e47d03f219b736c09b5ae1c111af9a9984faae8dbb89d5'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '5900727687e0c84a30e3fc808205ac3404e61ce70e39611723220a7e384d67ae'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
