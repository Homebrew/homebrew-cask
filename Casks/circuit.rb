cask 'circuit' do
  version :latest
  sha256 :no_check

  # eu.yourcircuit.com was verified as official when first introduced to the cask
  url 'https://eu.yourcircuit.com/desktop/releases/mac/Circuit.dmg'
  name 'Unify Circuit'
  homepage 'https://unify.com/en/solutions/team-collaboration/circuit'

  app 'Circuit.app'
end
