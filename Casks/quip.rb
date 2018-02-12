cask 'quip' do
  version '5.2.18'
  sha256 'c068bc1a2f1e8cd0f73c122e99a8425d56dfe917cd22c6d17046be079b276d92'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
