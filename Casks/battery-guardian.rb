class BatteryGuardian < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'http://version.dssw.co.uk/batteryguardian/standard'
  homepage 'https://www.dssw.co.uk/batteryguardian'

  link 'Battery Guardian.app'
end
