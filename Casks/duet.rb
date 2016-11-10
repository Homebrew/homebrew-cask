cask 'duet' do
  version '1.6.2.8'
  sha256 '7e491bebe011abab6330cab393e97cd8f61b5b8edb09f14e8a39867a573bb2ce'

  # s3-us-west-1.amazonaws.com/duetmac/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/duetmac/#{version.major_minor_patch.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '9530a79c68043d55ed87a039af0d6abd2c2f283bb9a4273a8e28344acf2f2582'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
