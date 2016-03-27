cask 'dmhy' do
  version '1.5-beta'
  sha256 'f0150353409fd824545346e407a40c2b651ee3c9efbfe030763968bbcef76f6d'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: '104bcebf25f187893ccc5caa7b1ea3fa25fd79e0b1b3cd2473481d9d5ec21fc3'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'
  license :mit

  app 'DMHY.app'
end