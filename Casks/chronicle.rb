cask 'chronicle' do
  version '7.0.1'
  sha256 'e7814ba8d68e60ba5bdd1820462f12605d09f8b4e07d57e133467cc7a4cc74ed'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: '8922aea739b78f71b238007909f8292478555a7144e4bae5dcc1e80ae72cb088'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
