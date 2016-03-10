cask 'origami' do
  version '2.1.4'
  sha256 '2aa49f683208157a4750fdf6fa07248c17709036d94a0e2708eac19e9dae54fd'

  # origami.facebook.com was verified as official when first introduced to the cask
  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          checkpoint: 'e965420f57412402ec5d8728f92a132291a9a3997bd54f718e175f83027443c1'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall pkgutil: 'com.facebook.origami.*'
end
