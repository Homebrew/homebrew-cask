cask 'flic' do
  version '2.0.4'
  sha256 'f2b65af8ee382412d1064aadac2d72dff3593dae0f2e0ac97de3f35466fa36b0'

  # misc-scl-cdn.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://misc-scl-cdn.s3.amazonaws.com/Flic.#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://flic.io/mac-app/download'
  name 'Flic'
  homepage 'https://flic.io/mac-app'

  app 'Flic.app'
end
