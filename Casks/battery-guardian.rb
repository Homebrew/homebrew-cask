class BatteryGuardian < Cask
  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'http://version.dssw.co.uk/batteryguardian/standard'
  homepage 'https://www.dssw.co.uk/batteryguardian'
  version 'latest'
  sha256 :no_check
  link 'Battery Guardian.app'
end
