cask 'battery-report' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryreport/dsswbatteryreport.dmg'
  name 'Battery Report'
  appcast 'http://version.dssw.co.uk/batteryreport/standard',
          :sha256 => 'a8dc71fa600b5ab05dded9de519da81aa3853ee0d8d0b2753177d4041443b420'
  homepage 'https://www.dssw.co.uk/batteryreport'
  license :commercial

  app 'Battery Report.app'
end
