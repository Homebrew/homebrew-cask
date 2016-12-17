cask 'solvespace' do
  version '2.2'
  sha256 '58b3577f27255a48f8cdb6e56efab54e6f8625137903d7af2aaf2a150b05d72b'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg"
  appcast 'https://github.com/solvespace/solvespace/releases.atom',
          checkpoint: '14d5efb3a103d1ef45cbbf1911b99d91f849cd1cfc7354989e349b83940c0a97'
  name 'SolveSpace'
  homepage 'http://solvespace.com/index.pl'

  app 'solvespace.app'
end
