cask 'pibakery' do
  version '0.3.6'
  sha256 'f449bfe01806e4c4b30a8603c60c439ce94b579f237c471ffc3057abcf507642'

  # github.com/davidferguson was verified as official when first introduced to the cask
  url "https://github.com/davidferguson/pibakery/releases/download/v#{version}/PiBakery.pkg"
  appcast 'https://github.com/davidferguson/pibakery/releases.atom',
          checkpoint: '0a7c35ba997b1e1f7ffa6366fe3731f1100d7a28fefaeac8d713d3691bbc6bf3'
  name 'PiBakery'
  homepage 'http://www.pibakery.org/'

  pkg 'PiBakery.pkg'

  uninstall pkgutil: [
                       'org.pibakery.pibakery.pkg',
                       'org.pibakery.raspbian-full.pkg',
                       'org.pibakery.raspbian-lite.pkg',
                     ]
end
