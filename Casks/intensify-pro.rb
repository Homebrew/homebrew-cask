cask 'intensify-pro' do
  version '1.2.2_867'
  sha256 '6f259029ea928f92efdafe98706d341bd6418d8195374183758ab4cbc6a665c5'

  # amazonaws.com is the official download host per the appcast feed
  url "https://creativekit.s3.amazonaws.com/IntensifyCK/IntensifyCK_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/IntensifyPro/appcast.xml',
          :checkpoint => '2470c0b5fd090deb858335f690b300f88a2ce3c0e7103f2580180b28c4cbf3ab'
  name 'Intensify Pro'
  homepage 'https://macphun.com/intensify'
  license :commercial

  app 'Intensify CK.app'
end
