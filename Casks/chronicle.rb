cask 'chronicle' do
  version '8.5.0'
  sha256 '221f151d8676d5bcea9a306a85094e5893fd44eb61280b69f1c47e9dbe1e9703'

  url "http://www.chronicleapp.com/static/downloads/chronicle#{version.major}.zip"
  appcast "http://www.littlefin.com/downloads/chronicle#{version.major}.xml"
  name 'Chronicle'
  homepage 'http://chronicleapp.com/'

  app "Chronicle #{version.major}.app"
end
