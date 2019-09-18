cask 'one-switch' do
  version '1.7.1'
  sha256 'c2127c94c26d606dfdee632fe1cc833be9586d58a4be78ab61f36892abfcd205'

  # dl.devmate.com/studio.fireball.OneSwitch was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/studio.fireball.OneSwitch/OneSwitch.zip'
  appcast "https://updates.devmate.com/studio.fireball.OneSwitch.xml"
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  app 'One Switch.app'
end
