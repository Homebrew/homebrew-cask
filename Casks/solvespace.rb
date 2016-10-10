cask 'solvespace' do
  version '2.1'
  sha256 '68255640cc291b044cf69fa67650590583623a331b2b25d23649f6c638ae559e'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg"
  appcast 'https://github.com/solvespace/solvespace/releases.atom',
          checkpoint: 'f81fcca30d49cc7b8c442d10ed814b8fb12f8dfe60369b4c48294904d931ab69'
  name 'SolveSpace'
  homepage 'http://solvespace.com'

  app 'SolveSpace.app'
end
