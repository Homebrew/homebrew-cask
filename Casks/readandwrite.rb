cask 'readandwrite' do
  version '7.1.2'
  sha256 '87ee079e8464ec443302d1ad900b5249080b2674dbc9fabc72ce97f40b89cb79'

  url "https://fastdownloads2.texthelp.com/readwritemac#{version.major}/updates/live/readwrite_#{version}.zip"
  appcast "https://readwrite.texthelp.com/rw#{version.major}mac/updatesp/appcast.xml"
  name 'Read&Write'
  homepage 'https://www.texthelp.com/en-gb/products/read-write/'

  app 'Read&Write.app'
end
