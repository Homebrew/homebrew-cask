cask 'focusatwill' do
  version '1.3.0'
  sha256 '68d4f1b9c2d3a7a9ded0331237552acdc22cd2df850e095701a066fbc0c74136'

  # faw-desktop.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}.dmg"
  name 'Focus@Will'
  homepage 'https://www.focusatwill.com/'

  app 'focusatwill.app'
end
