cask 'quip' do
  version '5.2.82'
  sha256 '1e72496039ff542b53d7997584ce12dd1af083ec0972af217edec08bc378d1c1'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
