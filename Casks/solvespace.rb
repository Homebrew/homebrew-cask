cask 'solvespace' do
  version '2.3'
  sha256 '2e93301bbfef9253b5ef614862d891e2ab84e18c6a1e4e36225c5d47cacabc2d'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg"
  appcast 'https://github.com/solvespace/solvespace/releases.atom',
          checkpoint: '80948af9a3b9048b69f498307fe2cd184953586768ac2cdb9d4d24d589bf5ff1'
  name 'SolveSpace'
  homepage 'http://solvespace.com/index.pl/'

  app 'solvespace.app'
end
