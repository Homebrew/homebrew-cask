cask 'quip' do
  version '5.2.31'
  sha256 '2ce1de6dd533f9f070125270cf84c4128f1e4dca63723b9e90404be17a63c47f'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
