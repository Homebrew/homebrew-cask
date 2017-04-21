cask 'eadventure' do
  version '1.5RC4b'
  sha256 '1862b8d96e91246ee466997d76347360fd3070aa0173394b9fb3e73fd4bc6c36'

  # downloads.sourceforge.net/e-adventure was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/e-adventure/eAdventure-v#{version}-Installer-MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/e-adventure/rss',
          checkpoint: '528c7f9e4e5b400c9de94a015853294ca62a9b2fd86ec82b9f744693ee401295'
  name 'eAdventure'
  homepage 'http://e-adventure.e-ucm.es'

  installer manual: 'eAdventure-installer.app'

  caveats do
    depends_on_java
  end
end
