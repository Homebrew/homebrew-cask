cask 'iridient-developer' do
  version '3.2.2'
  sha256 'a2c15afb957c48582cbbccbba8d579267a82ba9370064f5493cc9a6c8f8046f8'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'http://www.iridientdigital.com/products/rawdeveloper_history.html',
          checkpoint: '13900534c0dcc07df80b62203f5e60001d3e1235b606cb6793d1c7cf727c26a0'
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
