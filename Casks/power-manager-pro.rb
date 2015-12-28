cask 'power-manager-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          :sha256 => 'efb8f5e10013d3c8d3cca67f3434b80a8548c77c04960f9ec17dc2e51e70f7ca'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  app 'Power Manager Pro.app'
end
