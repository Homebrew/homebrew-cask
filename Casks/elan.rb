cask 'elan' do
  version '5.3'
  sha256 '82bf5106eed4297252dce600d2f85ee073e2bf9900066a94b02cbf7b843ad4f8'

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  app "ELAN_#{version}.app"
end
