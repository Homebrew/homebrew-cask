cask 'ammonite' do
  version '1.15.1'
  sha256 '7eebf9a07b1a2d996f8f959317872ff4f4919da7563d3b48f9d6a62cba1c56c8'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
