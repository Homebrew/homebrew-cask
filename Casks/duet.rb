cask 'duet' do
  version '1.6.3.4'
  sha256 'bfd491368cb255d14f69fa055ffb7d0bc2ae9c4fee067384b17ae5601f0bddc2'

  # s3-us-west-1.amazonaws.com/duetmac/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/duetmac/#{version.major_minor_patch.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '5ced264c2c1161b2226ab307ca8dd8a9a42ad3db2ea50f4283a8a4092f8cb882'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
