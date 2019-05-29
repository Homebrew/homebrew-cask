cask 'elan-avfx' do
  version '5.6'
  sha256 'aaa6c841c72a4c3a033524d7660dad8603a6ea32648d384b850885633a250eb7'

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}-AVFX_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  depends_on macos: '>= :high_sierra'

  app "ELAN_#{version}-AVFX.app"
end
