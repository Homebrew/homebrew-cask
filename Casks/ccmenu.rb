cask 'ccmenu' do
  version '1.10.3'
  sha256 'bf5a5326e2168ff28fd5db3beffb2277bca017d2253a2a8fe0734cd8aad5844d'

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: '91d810c7e4430bf642184dddf0ee54c47897ca5c23ab5d189467b071d9dad371'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CCMenu.app'
end
