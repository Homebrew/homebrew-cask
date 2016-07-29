cask 'soundcleod' do
  version '0.20'
  sha256 'd81b6c1aea0445e3eb166232c18aca03e4c5ce42aaceaa6415721a5ae20a9fdb'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url 'https://github.com/salomvary/soundcleod/raw/master/dist/SoundCleod.dmg'
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '78969a5d94bd2d8271a758ff98c1c0e9952867b1bcfc6fc42b3332ac58103784'
  name 'SoundCleod'
  homepage 'https://salomvary.github.io/soundcleod/'
  license :mit

  app 'SoundCleod.app'
end
