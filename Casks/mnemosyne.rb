cask 'mnemosyne' do
  version '2.5'
  sha256 'bc96a436f59e1f7f02a536679c8a811db844b5a267e88962c2159f90937ac9d4'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne',
          checkpoint: '43fb5c0bf4be29f6e67f10a3cef5994da60864520723073c22f8280860546272'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
