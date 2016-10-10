cask 'origami' do
  version '2.2'
  sha256 '75ccca6120c9596b2994bf5e43871d6a437402f52da66c14d3426b16e0d2bac9'

  # github.com/facebook/origami was verified as official when first introduced to the cask
  url "https://github.com/facebook/origami/releases/download/v#{version}/Origami-#{version}.zip"
  appcast 'https://github.com/facebook/origami/releases.atom',
          checkpoint: '685edf3bdbf3ab04011144521a4508aa97a4a2ddf798fa71a0d1d9a34c01f53c'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'

  pkg "Origami #{version}.pkg"

  uninstall pkgutil: 'com.facebook.origami.*'
end
