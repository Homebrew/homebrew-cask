cask 'quip' do
  version '5.3.73'
  sha256 '9da7f53f6495f62346a4427a0192e78bac6821671452063279d2a33b5c70b64f'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
