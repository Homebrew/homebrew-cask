cask 'duet' do
  version '1.5.4.9'
  sha256 'ee6334cb41f2d0a3d164b5c1de61d40f70d4cd9c829a35beba437ba9f6919d55'

  # d2ycb980mbr5lq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ycb980mbr5lq.cloudfront.net/#{version.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'http://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '01a04fe0630a818640a6e9fa9040113791192369529cb757f570a03e19b257f0'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :gratis

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
