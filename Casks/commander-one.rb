cask 'commander-one' do
  version '1.6'
  sha256 'e5474e14be688ed98ec3d78c47f7fefb1c7f2b8e392cb27e5e04295573aabbe5'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: 'ad715e45624b992a2cd8c2ca6f1c5598d7527a68cffcd9b748d8360eb31ffb46'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'

  app 'Commander One.app'
end
