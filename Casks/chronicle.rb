cask 'chronicle' do
  version '8.7.0'
  sha256 '62b4124c8d7898a379698ebaa7820364790ef1590da896cd0515cd08af9acf0b'

  url "http://www.chronicleapp.com/static/downloads/chronicle#{version.major}.zip"
  appcast "http://www.littlefin.com/downloads/chronicle#{version.major}.xml"
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app "Chronicle #{version.major}.app"
end
