cask 'hexels' do
  version '3.1.4'
  sha256 'b2e180a6b6d2606055ca0868d3e4af9228b87e34af3f5e340a2d9b4178925c7a'

  # s3.amazonaws.com/mset/download/release was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mset/download/release/hexels_install_#{version.no_dots}.dmg"
  name 'Hexels'
  homepage 'https://marmoset.co/hexels/'

  app "Hexels #{version.major}.app"
end
