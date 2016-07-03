cask 'ccmenu' do
  version '12.0'
  sha256 'b7fde5ece32172e31da448bcf75efeb8858a439e8885a8dcbd1082ffc51b08bd'

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: 'c65d96892edc5dc76f09b4a2db610009e6ea1131b73e66cc1b7f4bcd653695b6'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CCMenu.app'
end
