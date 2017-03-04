cask 'quip' do
  version '4.7.37'
  sha256 '28ebb2e6820558cc7f34e07e5f31cfcee1806b42c2235f8e730a9683d0a60430'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
