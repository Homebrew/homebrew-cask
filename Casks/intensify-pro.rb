cask 'intensify-pro' do
  version '1.2.2_867'
  sha256 '6f259029ea928f92efdafe98706d341bd6418d8195374183758ab4cbc6a665c5'

  # amazonaws.com is the official download host per the appcast feed
  url "http://creativekit.s3.amazonaws.com/IntensifyCK/IntensifyCK_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/IntensifyPro/appcast.xml',
          :sha256 => '70bf0d5286ced8a50518463ad7580371f86360767feeaf94a694b73632da7049'
  name 'Intensify Pro'
  homepage 'https://macphun.com/intensify'
  license :commercial

  app 'Intensify Pro.app'
end
