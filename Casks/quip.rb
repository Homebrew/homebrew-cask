cask 'quip' do
  version '5.1.54'
  sha256 '59bfbecfcc50d47a61cf9890120a8792fd6d35229773acce1d0ff690a1f9bbfd'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
