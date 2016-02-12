cask 'dropshare' do
  version '3.13.1'
  sha256 'e695a456c39c33085e1f69f169e166fe8027a6a22350a445a016cbacee317e73'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2wvuuix8c9e48.cloudfront.net/Dropshare-latest.zip'
  appcast 'https://getdropsha.re/sparkle/Dropshare.xml',
          checkpoint: 'f2833f0a77c01162d821d41e90f21812b97db9d0e4abc036404ba985e9dd1d26'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
