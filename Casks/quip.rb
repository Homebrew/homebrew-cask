cask 'quip' do
  version '5.2.06'
  sha256 '80eb083ac5bfc5e9e84b22e3de3c0bf628420eb62190e2d150b95f170ccaa1dd'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
