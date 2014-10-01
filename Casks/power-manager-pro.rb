class PowerManagerPro < Cask
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'http://version.dssw.co.uk/powermanager/professional'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :unknown

  app 'Power Manager Pro.app'
end
