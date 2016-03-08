cask 'intensify-pro' do
  version '1.2.2_867'
  sha256 '6f259029ea928f92efdafe98706d341bd6418d8195374183758ab4cbc6a665c5'

  # amazonaws.com/IntensifyCK was verified as official when first introduced to the cask
  url "https://creativekit.s3.amazonaws.com/IntensifyCK/IntensifyCK_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/IntensifyPro/appcast.xml',
          checkpoint: 'a617011d8dbc7e3223a1cefafbe1ab1a83ec9f7adea37827da2f8115519ec1f8'
  name 'Intensify Pro'
  homepage 'https://macphun.com/intensify'
  license :commercial

  app 'Intensify CK.app'
end
