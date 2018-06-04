cask 'quip' do
  version '5.2.97'
  sha256 'fb36d27c8cf37140d5901ef31cb0c6c3077ecfaa9ba881bcd54677300261533e'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
