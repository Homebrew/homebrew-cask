cask 'chronicle' do
  version '8.0.0'
  sha256 'ef87cd5375df1b1503467d89a6b5cc33d01fa0d064580006464d485211706505'

  url "http://www.chronicleapp.com/static/downloads/chronicle#{version.major}.zip"
  appcast "http://www.littlefin.com/downloads/chronicle#{version.major}.xml"
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app "Chronicle #{version.major}.app"
end
