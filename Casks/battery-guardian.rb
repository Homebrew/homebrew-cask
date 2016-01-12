cask 'battery-guardian' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'https://version.dssw.co.uk/batteryguardian/standard',
          :sha256 => 'a55927bf0b9bd76de157564f1cae7412c16a0d94433d14a6abca983528543c23'
  name 'Battery Guardian'
  homepage 'https://www.dssw.co.uk/batteryguardian'
  license :gratis

  app 'Battery Guardian.app'
end
