cask 'quip' do
  version '4.6.7'
  sha256 '69d714aa0deae82b5aeac9d3f936f8b2154a761a71da5d40d69f47340c493081'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
