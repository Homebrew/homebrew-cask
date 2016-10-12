cask 'dofus' do
  version ':latest'
  sha256 'e38cfa38c09a59867a8a9da1542caa7cf44e11805e7506ab689011059670b065'

  # dl.ak.ankama.com was verified as official when first introduced to the cask
  url 'http://dl.ak.ankama.com/games/installers/dofus.dmg'
  name 'Dofus'
  homepage 'http://www.dofus.com/'

  app 'Dofus.app'
end
