cask 'pibakery' do
  version '0.2.3'
  sha256 '655c01afafdd3012332ad3a68f0388f5f838cf826dc49b7d645b5b0928e01f50'

  # github.com/davidferguson was verified as official when first introduced to the cask
  url "https://github.com/davidferguson/pibakery/releases/download/v#{version}/PiBakery.pkg"
  appcast 'https://github.com/davidferguson/pibakery/releases.atom',
          checkpoint: '32c4b18e7d1986179ac634944e4e5093267ad1e1ada80f6065a9384a966ea3eb'
  name 'PiBakery'
  homepage 'http://www.pibakery.org/'

  pkg 'PiBakery.pkg'

  uninstall pkgutil: 'org.PiBakery.pkg.*'
end
