cask 'origami' do
  version '2.1.3'
  sha256 'e97e9106d14c1beeb7a05019040b0a6f31691e4b0d1c8d3fb94e0de1b8110f72'

  # origami.facebook.com was verified as official when first introduced to the cask
  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          checkpoint: '3545a46eb237f2628d404bfe845987a4411e937e95bd6d6cd3b1e679a0e332b3'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall pkgutil: 'com.facebook.origami.*'
end
