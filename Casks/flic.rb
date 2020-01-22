cask 'flic' do
  version '2.0.0'
  sha256 '5b7a2cac9772723f7ddd9d8a54be21c094c35851ade650384277e6b9770043d6'

  # misc-scl-cdn.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://misc-scl-cdn.s3.amazonaws.com/Flic.#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://flic.io/mac-app/download'
  name 'Flic'
  homepage 'https://flic.io/mac-app'

  app 'Flic.app'
end
