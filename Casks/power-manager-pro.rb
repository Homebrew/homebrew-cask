cask 'power-manager-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          :checkpoint => 'b318c4c4481dbe4e2d269c65ffc2603339b3ed633f512dcd363c49bad79eb52a'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  app 'Power Manager Pro.app'
end
