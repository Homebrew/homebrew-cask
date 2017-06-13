cask 'ring' do
  version '0.67'
  sha256 '6207ca367e0979e944d2b9caa2f56c185d2ec7231ca74a6e96b78285c577df90'

  # ring-mac-app-assets.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast 'https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml',
          checkpoint: 'e12f99e8f9c17d6afd11cd185b955cd08421c9c8d910471e12d38f51412a39e7'
  name 'Ring'
  homepage 'https://ring.com/'

  auto_updates true

  app 'Ring.app'
end
