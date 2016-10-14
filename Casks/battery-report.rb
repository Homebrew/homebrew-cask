cask 'battery-report' do
  version '1.2.0'
  sha256 '1ad72dc7c73c2a9e0d85b7ee6836348714fe00b51bd6c49352b0c01e40425015'

  url "https://www.dssw.co.uk/batteryreport/dsswbatteryreport-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/batteryreport/standard',
          checkpoint: '18be1911eb53fa3d0a20abfaa0ba2a74992eed5bb9bb3fc39b64184537ffb674'
  name 'Battery Report'
  homepage 'https://www.dssw.co.uk/batteryreport'

  app 'Battery Report.app'
end
