cask 'readandwrite' do
  version '7.1.3'
  sha256 '780ef1ad7999893a84b3ce7022ee9094acd773ab93a6490dbc39423477c2666e'

  url "https://fastdownloads2.texthelp.com/readwritemac#{version.major}/updates/live/readwrite_#{version}.zip"
  appcast "https://readwrite.texthelp.com/rw#{version.major}mac/updatesp/appcast.xml"
  name 'Read&Write'
  homepage 'https://www.texthelp.com/en-gb/products/read-write/'

  app 'Read&Write.app'
end
