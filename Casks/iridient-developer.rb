cask 'iridient-developer' do
  version '3.2.1'
  sha256 '43382713f0941e0a5a44f4bfc9a8b41f0fa0e1c8c1c761ef04e5e6350f367c37'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'http://www.iridientdigital.com/products/rawdeveloper_history.html',
          checkpoint: 'c39f874e22e9051235d7422f91fb51f276ab6d52e3109a90f01b71c2f254a1f3'
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
