cask 'readandwrite' do
  version '7.1.0'
  sha256 '1a747bb6aaf815cc971281b3ddba51566b347fd8eae0126859ed27c372c02356'

  url "https://fastdownloads2.texthelp.com/readwritemac#{version.major}/updates/live/readwrite_#{version}.zip"
  appcast "https://readwrite.texthelp.com/rw#{version.major}mac/updatesp/appcast.xml"
  name 'Read&Write'
  homepage 'https://www.texthelp.com/en-gb/products/read-write/'

  app 'Read&Write.app'
end
