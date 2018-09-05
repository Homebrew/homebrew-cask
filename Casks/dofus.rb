cask 'dofus' do
  version :latest
  sha256 :no_check

  # dl.ak.ankama.com was verified as official when first introduced to the cask
  url 'http://dl.ak.ankama.com/games/installers/dofus.dmg'
  name 'Dofus'
  homepage 'http://www.dofus.com/'

  app 'Dofus.app'
end
