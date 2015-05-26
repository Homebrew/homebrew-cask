cask :v1 => 'power-manager-pro' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'http://version.dssw.co.uk/powermanager/professional'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  app 'Power Manager Pro.app'
end
