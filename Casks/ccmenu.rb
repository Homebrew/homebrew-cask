cask 'ccmenu' do
  version '1.10.3'
  sha256 'bf5a5326e2168ff28fd5db3beffb2277bca017d2253a2a8fe0734cd8aad5844d'

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip"
  appcast 'https://github.com/erikdoe/ccmenu/releases.atom',
          checkpoint: 'f044462d834337a16b7a80d3ea038ba44d746890836eb8a9b9db9b6bc053f0e2'
  name 'CCMenu'
  homepage 'http://ccmenu.org/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CCMenu.app'
end
