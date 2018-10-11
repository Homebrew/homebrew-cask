cask 'hexels' do
  version '3.1.3'
  sha256 'c66a202cb5953dc653fa396966f641da757ce66f010c3f2f6a0c67871331ee38'

  # s3.amazonaws.com/mset/download/release was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mset/download/release/hexels_install_#{version.no_dots}.dmg"
  name 'Hexels'
  homepage 'https://marmoset.co/hexels/'

  app "Hexels #{version.major}.app"
end
