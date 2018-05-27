cask 'onlyoffice' do
  version '5.1'
  sha256 'c05ca69335a75d483fce6016e2bd6459876208ad7f7a1b5ff9760c778fbff301'

  url "http://download.onlyoffice.com/install/desktop/editors/mac/updates/onlyoffice/ONLYOFFICE-#{version}.zip"
  appcast 'http://download.onlyoffice.com/install/desktop/editors/mac/onlyoffice.xml',
          checkpoint: '26159448918b17350e242a18803a8889d4ced26969e6cd92b7c9683ab55c781b'
  name 'ONLYOFFICE'
  homepage 'https://www.onlyoffice.com/'

  auto_updates true

  app 'ONLYOFFICE.app'
end
