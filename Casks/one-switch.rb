cask 'one-switch' do
  version '1.8'
  sha256 'd75e2c50f947dc735ab52627909d55c951079efa8dde0cc67a80c98fedafab1b'

  # dl.devmate.com/studio.fireball.OneSwitch was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/studio.fireball.OneSwitch/OneSwitch.zip'
  appcast 'https://updates.devmate.com/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
