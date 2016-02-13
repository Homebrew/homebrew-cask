cask 'duet' do
  version '1.5.2.4'
  sha256 '8b8e64779bee391e4aed9c7539745c7bdcf2ddcd38d945d108a506e8b3daf169'

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
