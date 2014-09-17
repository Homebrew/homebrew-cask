class BatteryReport < Cask
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryreport/dsswbatteryreport.dmg'
  appcast 'http://version.dssw.co.uk/batteryreport/standard'
  homepage 'https://www.dssw.co.uk/batteryreport'

  app 'Battery Report.app'
end
