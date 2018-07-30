cask 'hexels' do
  version '3.1.2'
  sha256 '197d85e228d9c18807d4a4dde16b8d75bea5200f2506b8bfe83129080d66fb4c'

  # s3.amazonaws.com/mset/download/release was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mset/download/release/hexels_install_#{version.no_dots}.dmg"
  name 'Hexels'
  homepage 'http://marmoset.co/hexels/'

  app "Hexels #{version.major}.app"
end
