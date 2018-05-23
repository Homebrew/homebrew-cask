cask 'elan' do
  version '5.2'
  sha256 'b92d82620ba4cc0aa089a0cf49e3bea47427c6189e01664349fd6f91f2cd6369'

  url "http://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast 'https://tla.mpi.nl/tools/tla-tools/elan/release-notes/',
          checkpoint: '0cd338421641440e99a7ed6a12eae0dffc07582ba2a7f0f9b2c5c488f129a5c1'
  name 'ELAN'
  homepage 'https://tla.mpi.nl/tools/tla-tools/elan/'

  app "ELAN_#{version}.app"
end
