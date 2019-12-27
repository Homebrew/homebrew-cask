cask 'one-switch' do
  version '1.9'
  sha256 '1580d0e85e59af3efbbce06dbf12f908ae5eb5da5167e250511071b0d3b3c2a9'

  # dl.devmate.com/studio.fireball.OneSwitch was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/studio.fireball.OneSwitch/OneSwitch.zip'
  appcast 'https://updates.devmate.com/studio.fireball.OneSwitch.xml'
  name 'One Switch'
  homepage 'https://fireball.studio/oneswitch'

  depends_on macos: '>= :mojave'

  app 'One Switch.app'
end
