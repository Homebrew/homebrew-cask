cask 'one-switch' do
  version '1.8'
  sha256 '03f045aa669f117a97a3f4ddd2d5aa2b0ecaf966d79de08cc13e65a6ae0913fc'

  # dl.devmate.com/studio.fireball.OneSwitch was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/studio.fireball.OneSwitch/OneSwitch.zip'
  appcast 'https://updates.devmate.com/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
