cask 'hexels' do
  version '3.1.5'
  sha256 '65ae3d445036588100ef82fb077a72ca7b2afd4752ca7d1e1b43a28ea1da8023'

  # s3.amazonaws.com/mset/download/release was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mset/download/release/hexels_install_#{version.no_dots}.dmg"
  appcast 'https://marmoset.co/hexels/history/'
  name 'Hexels'
  homepage 'https://marmoset.co/hexels/'

  app "Hexels #{version.major}.app"
end
