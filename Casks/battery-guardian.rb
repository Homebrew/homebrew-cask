cask 'battery-guardian' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'https://version.dssw.co.uk/batteryguardian/standard',
          :checkpoint => 'f2a712c10bb7541d47d774aaadbb5be5bc1ad7b668907ce02ce1d142bfa5fa1f'
  name 'Battery Guardian'
  homepage 'https://www.dssw.co.uk/batteryguardian'
  license :gratis

  app 'Battery Guardian.app'
end
