cask 'battery-guardian' do
  version '1.1.0'
  sha256 'cf9ebfe03fbd1bc1e841dcf9eaa3d5e71132245b22e0d6338a281ab192afad79'

  url 'https://www.dssw.co.uk/batteryguardian/dsswbatteryguardian.dmg'
  appcast 'https://version.dssw.co.uk/batteryguardian/standard',
          checkpoint: 'f2a712c10bb7541d47d774aaadbb5be5bc1ad7b668907ce02ce1d142bfa5fa1f'
  name 'Battery Guardian'
  homepage 'https://www.dssw.co.uk/batteryguardian'
  license :gratis

  app 'Battery Guardian.app'
end
