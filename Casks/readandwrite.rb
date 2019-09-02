cask 'readandwrite' do
  version '7.1.1'
  sha256 'e67973d5f50f33deaf8c94033c93d566c7182eb69efcc2f51a585076bc6b49af'

  url "https://fastdownloads2.texthelp.com/readwritemac#{version.major}/updates/live/readwrite_#{version}.zip"
  appcast "https://readwrite.texthelp.com/rw#{version.major}mac/updatesp/appcast.xml"
  name 'Read&Write'
  homepage 'https://www.texthelp.com/en-gb/products/read-write/'

  app 'Read&Write.app'
end
