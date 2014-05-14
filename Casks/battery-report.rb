class BatteryReport < Cask
  url 'https://www.dssw.co.uk/batteryreport/dsswbatteryreport.dmg'
  appcast 'http://version.dssw.co.uk/batteryreport/standard'
  homepage 'https://www.dssw.co.uk/batteryreport'
  version 'latest'
  sha256 :no_check
  link 'Battery Report.app'
end
