cask 'ccmenu' do
  version '11.0'
  sha256 '5e1a7aff0fc9e4c8520f55f38081979593544f7e29ec1e159ae2be000278a28c'

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: 'b3dee74295d4e8ed3c770726803b45a09731f09bd73164ebebfa723836d663b6'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CCMenu.app'
end
