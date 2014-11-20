class Hiera < Cask
  version '1.3.4'
  sha256 :no_check

  url 'http://downloads.puppetlabs.com/mac/hiera-1.3.4.dmg'
  homepage 'https://projects.puppetlabs.com/projects/hiera'
  license :unknown

  pkg 'hiera-1.3.4.pkg'
end
