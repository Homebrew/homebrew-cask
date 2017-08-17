cask 'quip' do
  version '5.0.92'
  sha256 '48607814a7265deb651501f3799cf10bee2b168322cf52223dc7ffd939126280'

  # d2i1pl9gz4hwa7.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'

  app 'Quip.app'
end
