class Facter < Cask
  version '2.3.0'
  sha256 :no_check

  url 'http://downloads.puppetlabs.com/mac/facter-2.3.0.dmg'
  homepage 'http://puppetlabs.com/facter'
  license :unknown

  pkg 'facter-2.3.0.pkg'
end
