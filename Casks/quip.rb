cask 'quip' do
  version '5.3.17'
  sha256 '30929bc641d0acd6236146d7fb9a64f22de2d46bb4c6debf357ef8a561106fa8'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
