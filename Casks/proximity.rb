cask 'proximity' do
  version '1.0.1'
  sha256 '836d209bb83cd144780e200aad7ea6dda2581b20c5be316208337996532f0d51'

  # kvraudio.com was verified as official when first introduced to the cask
  url "https://static.kvraudio.com/files/1451/proximity_v#{version.dots_to_underscores}-mac.zip"
  name 'Proximity'
  homepage 'http://www.tokyodawn.net/proximity/'
  license :gratis

  container nested: 'macOS/Proximity-VST-AU.dmg'

  audio_unit_plugin 'Proximity.component'
  vst_plugin 'Proximity.vst'
end
