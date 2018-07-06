cask 'elan' do
  version '5.2'
  sha256 'b92d82620ba4cc0aa089a0cf49e3bea47427c6189e01664349fd6f91f2cd6369'

  url "http://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  app "ELAN_#{version}.app"
end
