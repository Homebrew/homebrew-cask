cask 'duet' do
  version '1.6.0.2'
  sha256 'ea56fecb6b7a0af97836e138009f905ae394c4be832fedac4b44542972707bc7'

  # d2ycb980mbr5lq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ycb980mbr5lq.cloudfront.net/#{version.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '742afd0dee11d3c6ed50531ceb6b7230d9b3a1331aea6e553b9a0dba9f68347f'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :gratis

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
