cask 'dropshare' do
  version '4-4118'
  sha256 '1488eaa5354ff8d8cc30ea97e5de28183e835aa644fad61e457baee0e9853219'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: '3a91ee0fe4f7c602fc7ee8729991ae5158446cafa1c6088b94397a4f2bb9e99c'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
