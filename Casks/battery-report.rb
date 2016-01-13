cask 'battery-report' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryreport/dsswbatteryreport.dmg'
  appcast 'https://version.dssw.co.uk/batteryreport/standard',
          :sha256 => '0abf6f79f1b21e25f17183fdcfe9f8a3e879a9ed51bd540deaf004fdf83d2292'
  name 'Battery Report'
  homepage 'https://www.dssw.co.uk/batteryreport'
  license :commercial

  app 'Battery Report.app'
end
