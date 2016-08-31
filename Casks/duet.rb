cask 'duet' do
  version '1.5.8.8'
  sha256 'bf12fcfe4f1b0cae938e416a1a079243c5bbbb880ff9852ec3191bf33070f8a1'

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
