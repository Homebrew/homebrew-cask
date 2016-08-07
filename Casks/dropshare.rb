cask 'dropshare' do
  version '4-4223'
  sha256 '102c24a4cf995eb85431eb3ea2c2751b81a1d5834823dffaa2966463fa16969e'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: '2b9bbabecaee41a8fe0753cf93f78f96445334474874e47e7ac0f323e2f6eb20'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
