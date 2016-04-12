cask 'dropshare' do
  version '4-4116'
  sha256 'dbdcba356de933916a60d6b4f26b1c97ed801ad9aad05adda76b74d033ce32cf'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: 'd0a24cfa3a71095240f071e70ccec6df3d2e8f7dd37188b689388bc66c1a6c87'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
