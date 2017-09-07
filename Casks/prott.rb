cask 'prott' do
  version '1.0.5'
  sha256 '65f86f2c6c417d142927b430ed1e4d97c8c306620eedb275d0811f1c156e1cf3'

  url 'https://dl.prottapp.com/apps/prott.dmg'
  appcast 'https://dl.prottapp.com/apps/appcast.xml',
          checkpoint: '8a9e1c1fcb311cf6c1b369d7b58bf2abafb4c894fa54107735379e5218b66f02'
  name 'Prott'
  homepage 'https://prottapp.com/'

  app 'Prott.app'
end
