cask 'chronicle' do
  version '8.5.3'
  sha256 '3c53626b2cd8ecf8e5fa8c06202eca6df26f04761fb6652e3463c49ddd1c4685'

  url "http://www.chronicleapp.com/static/downloads/chronicle#{version.major}.zip"
  appcast "http://www.littlefin.com/downloads/chronicle#{version.major}.xml"
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app "Chronicle #{version.major}.app"
end
