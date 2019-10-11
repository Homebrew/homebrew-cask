cask 'elan-avfx' do
  version '5.8'
  sha256 '35e89961de320dc0db5812c4ea1cd65be77a4667cb03bb7bc60603770edf70aa'

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  depends_on macos: '>= :high_sierra'

  app "ELAN_#{version}-AVFX.app"
end
