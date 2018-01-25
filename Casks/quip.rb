cask 'quip' do
  version '5.2.12'
  sha256 'bfad413211de36f23cd021c3a9ddbd82ccdeee0962198c3ef6a89acd7b32e41f'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
