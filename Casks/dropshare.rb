cask 'dropshare' do
  version '4-3803'
  sha256 'ce9d0d22e29d21c33526858213ffb8c0ad90ed8407b76d751027394b38822a8a'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: 'c74b368aef1dd161963d0781a3e708eb8932e264562b326294de6500074ae12e'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
