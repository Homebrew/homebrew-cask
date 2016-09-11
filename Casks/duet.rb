cask 'duet' do
  version '1.5.9.4'
  sha256 '4ad68e0ad9009f2d7a77b33e13ae47c64360b101935f660001e03dc3eb27af21'

  # d2ycb980mbr5lq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ycb980mbr5lq.cloudfront.net/#{version.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '01a04fe0630a818640a6e9fa9040113791192369529cb757f570a03e19b257f0'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :gratis

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
