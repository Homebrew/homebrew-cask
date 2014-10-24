class Qldds < Cask
  version '1.1'
  sha256 '8abd0978eb90b1ef55b5ac079960b028cbc926673535a0802bccd590fb253bc6'

  url 'https://github.com/sakrist/QLdds/blob/master/QLdds_110.pkg.zip?raw=true'
  homepage 'https://github.com/Marginal/QLdds'
  license :gpl

  pkg 'QLdds_110.pkg'
  uninstall :pkgutil => 'uk.org.marginal.*'

end
