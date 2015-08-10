cask :v1 => 'qldds' do
  version '1.20'
  sha256 '684633521706544774c4a0e2f4c87bb5a0e6da01fa4c70c1b2e81bdd93cd770f'

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.gsub('.','')}/QLdds_#{version.gsub('.','')}.pkg"
  appcast 'https://github.com/Marginal/QLdds/releases.atom'
  name 'QuickLook DDS'
  homepage 'https://github.com/Marginal/QLdds'
  license :gpl

  pkg "QLdds_#{version.gsub('.','')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qldds'
end
