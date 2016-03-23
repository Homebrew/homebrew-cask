cask 'dmhy' do
  version '1.3'
  sha256 '8c41c2b0a28f846495e550d0ffbade5d23e295491f4d04a26daa0d6f2cb9d153'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: '104bcebf25f187893ccc5caa7b1ea3fa25fd79e0b1b3cd2473481d9d5ec21fc3'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'
  license :mit

  app 'DMHY.app'
end
