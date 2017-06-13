cask 'chronicle' do
  version '7.0.2'
  sha256 '261178a486d1952e2738ea99ab4b18b08ba227a6ed381e4eea679ebda582d883'

  url 'http://chronicleapp.com/static/downloads/chronicle.zip'
  appcast 'http://www.littlefin.com/downloads/chronicle3.xml',
          checkpoint: 'bbb23c7248400bcbb6a33227233df67599b75c0b3eb92ff173b193f7de1a28d2'
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app 'Chronicle.app'
end
