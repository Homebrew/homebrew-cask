cask :v1 => 'battery-report' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryreport/dsswbatteryreport.dmg'
  appcast 'http://version.dssw.co.uk/batteryreport/standard'
  homepage 'https://www.dssw.co.uk/batteryreport'
  license :commercial

  app 'Battery Report.app'
end
