cask 'elan-avfx' do
  version '5.8'
  sha256 '91153961b6ba6ad148bd5021967568e7dcbc2416b709e0c8681163e89f270d7d'

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  depends_on macos: '>= :high_sierra'

  app "ELAN_#{version}-AVFX.app"
end
