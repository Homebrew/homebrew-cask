cask 'elan-avfx' do
  version '5.7'
  sha256 '258d7390e8985ad603b9239ae39fe32285a1d7a78a70f242e3fa1ff4ed79c930'

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}-AVFX_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  depends_on macos: '>= :high_sierra'

  app "ELAN_#{version}-AVFX.app"
end
