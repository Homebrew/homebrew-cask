cask 'quip' do
  version '5.4.24'
  sha256 '9cdaabd92eb2ae8a071cebff9dd916847b74595387722abb3e79c25077ca1330'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
