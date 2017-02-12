cask 'solvespace' do
  version '2.3'
  sha256 '2e93301bbfef9253b5ef614862d891e2ab84e18c6a1e4e36225c5d47cacabc2d'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg"
  appcast 'https://github.com/solvespace/solvespace/releases.atom',
          checkpoint: '9941a53da74844d3eb4f36a905494f70ed3498e6fdbb18370792370e60ad2468'
  name 'SolveSpace'
  homepage 'http://solvespace.com/index.pl/'

  app 'solvespace.app'
end
