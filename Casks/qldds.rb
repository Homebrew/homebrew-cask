cask 'qldds' do
  version '1.20'
  sha256 '684633521706544774c4a0e2f4c87bb5a0e6da01fa4c70c1b2e81bdd93cd770f'

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.delete('.')}/QLdds_#{version.delete('.')}.pkg"
  appcast 'https://github.com/Marginal/QLdds/releases.atom',
          checkpoint: '78e822e4270104b1744c55a0da9f77e4bf113e7ba095cb2e84215b99d751b963'
  name 'QuickLook DDS'
  homepage 'https://github.com/Marginal/QLdds'
  license :gpl

  pkg "QLdds_#{version.delete('.')}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qldds'
end
