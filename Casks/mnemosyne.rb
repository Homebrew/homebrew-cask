cask 'mnemosyne' do
  version '2.4.1'
  sha256 'c302624b8652f397c18fe6cbdaf520c9898dd97a68b8a02f90b96cbe5177df8d'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne',
          checkpoint: '0b5bd0a344a750820cb2ebce55dae58341670b395546cac3f8b3440c0e4ba602'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
