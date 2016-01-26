cask 'battery-report' do
  version '1.2.0'
  sha256 'd77969d003b940fbce8ca6c7899f1d8911b972a75f61c8ea12df2c42346b6fda'

  url 'https://www.dssw.co.uk/batteryreport/dsswbatteryreport.dmg'
  appcast 'https://version.dssw.co.uk/batteryreport/standard',
          checkpoint: '0cfa65130f06fcfc93184858c4dde3337cea3175e8aaecf7a4f8664f600b171d'
  name 'Battery Report'
  homepage 'https://www.dssw.co.uk/batteryreport'
  license :commercial

  app 'Battery Report.app'
end
