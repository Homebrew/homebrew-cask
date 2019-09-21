cask 'subethaedit' do
  version '5.1'
  sha256 '0b41e835a64d358a159467c7c9fc14b50295e1973cb54cf4944b4ad561f1b1ec'

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast 'https://subethaedit.net/appcast.xml'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  app 'SubEthaEdit.app'
end
