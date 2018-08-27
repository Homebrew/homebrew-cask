cask 'mnemosyne' do
  version '2.6.1'
  sha256 '05a63b18d0f110db34898656855f71079f36bfa202f4c978ac7b52ce65463e89'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne'
  name 'Mnemosyne'
  homepage 'https://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
