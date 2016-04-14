cask 'origami' do
  version '2.2'
  sha256 '75ccca6120c9596b2994bf5e43871d6a437402f52da66c14d3426b16e0d2bac9'

  # origami.facebook.com was verified as official when first introduced to the cask
  url "https://github.com/facebook/origami/releases/download/v2.2/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          checkpoint: '41aef413f46aa844525905ab9c09a1b522e3ddb16d0b6c843e9cb7e2826a76e3'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall pkgutil: 'com.facebook.origami.*'
end
