cask :v1 => 'qldds' do
  version '1.20'
  sha256 '8abd0978eb90b1ef55b5ac079960b028cbc926673535a0802bccd590fb253bc6'

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.gsub('.','')}/QLdds_#{version.gsub('.','')}.pkg"
  homepage 'https://github.com/Marginal/QLdds'
  license :gpl

  pkg "QLdds_#{version.gsub('.','')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.*'
end
