cask 'subethaedit' do
  version '5.0'
  sha256 '22c4219873a73602794805ea26d671e914dcf667041ac7508beb2ad5b6cda982'

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast 'https://subethaedit.net/appcast.xml'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  app 'SubEthaEdit.app'
end
