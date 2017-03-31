cask 'origami' do
  version '2.2'
  sha256 '75ccca6120c9596b2994bf5e43871d6a437402f52da66c14d3426b16e0d2bac9'

  # github.com/facebook/origami was verified as official when first introduced to the cask
  url "https://github.com/facebook/origami/releases/download/v#{version}/Origami-#{version}.zip"
  appcast 'https://github.com/facebook/origami/releases.atom',
          checkpoint: 'd38bd50b4d8cc93621940b1e90897ab9cbf1b3fb7fa8e5e3004126963b053cac'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'

  pkg "Origami #{version}.pkg"

  uninstall pkgutil: 'com.facebook.origami.*'
end
