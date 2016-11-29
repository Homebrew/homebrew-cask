cask 'duet' do
  version '1.6.2.8'
  sha256 '7e491bebe011abab6330cab393e97cd8f61b5b8edb09f14e8a39867a573bb2ce'

  # s3-us-west-1.amazonaws.com/duetmac/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/duetmac/#{version.major_minor_patch.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '118ed35f61dd63569722c55f9cfe1847b10407b6fb023b69a2ebd6e3530ed694'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
