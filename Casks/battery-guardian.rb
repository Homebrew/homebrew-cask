cask :v1 => 'battery-guardian' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'http://version.dssw.co.uk/batteryguardian/standard'
  homepage 'https://www.dssw.co.uk/batteryguardian'
  license :gratis

  app 'Battery Guardian.app'
end
