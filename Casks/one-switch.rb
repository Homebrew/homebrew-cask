cask 'one-switch' do
  version '1.8.1'
  sha256 'd8d3916b7ec7c2bea1c22c624ceb310ebd10d5c2f70977521a15142a44db2707'

  # dl.devmate.com/studio.fireball.OneSwitch was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/studio.fireball.OneSwitch/OneSwitch.zip'
  appcast 'https://updates.devmate.com/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
