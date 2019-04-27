cask 'elan' do
  version '5.5'
  sha256 '0e884443161cd07c846972571d65cf670f73d52522edd481a3ce03d1882de852'

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}-AVFX_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  app "ELAN_#{version}.app"
end
