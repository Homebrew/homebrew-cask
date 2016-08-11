cask 'dropshare' do
  version '4-4225'
  sha256 '5df1c6b3881a4154739d46c54ffaf788f4510b5993d2a3f13a16906376488bcc'

  # d2wvuuix8c9e48.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2wvuuix8c9e48.cloudfront.net/Dropshare#{version}.app.zip"
  appcast 'https://getdropsha.re/sparkle/Dropshare4.xml',
          checkpoint: '73ce42eac41c72ca5f1f4dacf8d7331122f75f30288137bf28d03ef9f0cd4f67'
  name 'Dropshare'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare 4.app'
end
