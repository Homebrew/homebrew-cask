cask :v1 => 'bar-magnet' do
  version '1.0'
  sha256 'b8242cbef4ecf537770e53ae3e7a750e6241f4185898476b021f356d9328567c'

  url "http://qata.cc/app/Bar%20Magnet%20#{version}.zip"
  appcast 'http://qata.cc/app/appcast.xml'
  homepage 'http://qata.cc/Site/Bar_Magnet.html'
  license :gratis

  app 'Bar Magnet.app'
end
