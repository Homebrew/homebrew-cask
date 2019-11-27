cask 'one-switch' do
  version '1.8.2'
  sha256 '599533798cfff2d83fcd5d44efb470ff52b2680ab76a1d99852344336a555d2d'

  # dl.devmate.com/studio.fireball.OneSwitch was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/studio.fireball.OneSwitch/OneSwitch.zip'
  appcast 'https://updates.devmate.com/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
