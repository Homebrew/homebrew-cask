cask 'duet' do
  version '1.5.9.6'
  sha256 '54464c6c20a0b208fea8096e41aafe9aa4a30887f5327df0f4bd34ee46e152cb'

  # d2ycb980mbr5lq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ycb980mbr5lq.cloudfront.net/#{version.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '0fd19ed1b7880600902c308a5fbf1f727d745b87540a00e2c7da902ed3dc44e9'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'
  license :gratis

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
