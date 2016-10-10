cask 'duet' do
  version '1.6.0.6'
  sha256 '376bfaf0e10b841491b33f9105c24387da4e7c6e3dbda4348860eb199b825932'

  # d2ycb980mbr5lq.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ycb980mbr5lq.cloudfront.net/#{version.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: 'effd1d216189a65c94a7307e9f55568df011564ddaa5393711f27717019e4b32'
  name 'Duet'
  homepage 'http://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
