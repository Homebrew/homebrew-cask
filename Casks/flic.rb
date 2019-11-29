cask 'flic' do
  version '1.1.3,2018-09-11 13-14-23'
  sha256 '400b1aed904b527b049af26c61aca234a6812e7f3d366ecb471a5b8fe6646ae1'

  # misc-scl-cdn.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://misc-scl-cdn.s3.amazonaws.com/Flic.#{version.before_comma}.zip"
  appcast 'https://flic.io/mac-app'
  name 'FlicMac Developer Distribution'
  homepage 'https://flic.io/mac-app'

  app "FlicMac Developer Distribution #{version.after_comma}/Flic.app"
end
