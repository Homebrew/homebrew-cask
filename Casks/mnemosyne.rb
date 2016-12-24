cask 'mnemosyne' do
  version '2.4'
  sha256 'a1b107bfa61ea7b0f2d370446a324b56a742238f00d9a0f6ee1f6525e7f38222'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne',
          checkpoint: '6f8a58f877ca91c33af0d6e275d1e803d93a4e0dd93827954dfa352424fc4c04'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
