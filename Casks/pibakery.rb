cask 'pibakery' do
  version '0.3.2'
  sha256 '1b7ac4a3d9890185a838fd1566aa1809e6dfad24fd9dfbd0fe482b80edbbb6c5'

  # github.com/davidferguson was verified as official when first introduced to the cask
  url "https://github.com/davidferguson/pibakery/releases/download/v#{version}/PiBakery.pkg"
  appcast 'https://github.com/davidferguson/pibakery/releases.atom',
          checkpoint: '1a8b804fb29d35abeb58731dcd32ce025c744fa114c7992cc8bb46773f77c269'
  name 'PiBakery'
  homepage 'http://www.pibakery.org/'

  pkg 'PiBakery.pkg'

  uninstall pkgutil: 'org.PiBakery.pkg.*'
end
