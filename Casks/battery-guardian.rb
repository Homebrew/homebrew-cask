cask 'battery-guardian' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'http://version.dssw.co.uk/batteryguardian/standard',
          :sha256 => '6e86f2691ab9d2c1486b54e60b9528fb4f85c689e86a150300233d8485ce3306'
  name 'Battery Guardian'
  homepage 'https://www.dssw.co.uk/batteryguardian'
  license :gratis

  app 'Battery Guardian.app'
end
