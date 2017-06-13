cask 'pibakery' do
  version '0.3.3'
  sha256 '97973646ce6ce0f6208b340585a728339880f3470c24f408232edbda90f2d727'

  # github.com/davidferguson was verified as official when first introduced to the cask
  url "https://github.com/davidferguson/pibakery/releases/download/v#{version}/PiBakery.pkg"
  appcast 'https://github.com/davidferguson/pibakery/releases.atom',
          checkpoint: 'e2b016e915dd84f59d7d83e5ff0045ee45650175015548098cad1ce1ffc900b5'
  name 'PiBakery'
  homepage 'http://www.pibakery.org/'

  pkg 'PiBakery.pkg'

  uninstall pkgutil: [
                       'org.pibakery.pibakery.pkg',
                       'org.pibakery.raspbian-full.pkg',
                       'org.pibakery.raspbian-lite.pkg',
                     ]
end
