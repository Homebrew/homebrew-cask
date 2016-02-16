cask 'dropshare' do
  version '4-3802'
  sha256 '8b8c049eb0dffd938fce9c80dfd95d227e1fbfab7f060737e7dce676cade2f47'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: 'd87e77caf46666242b66bbef7becf16409cf0c585446510b3988765016e07477'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
