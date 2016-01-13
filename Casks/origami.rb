cask 'origami' do
  version '2.1.2'
  sha256 '23a73555ccf1153e3e556a376f29c8b1b7b331629d3909b243d4eb4e0345df25'

  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          :checkpoint => '6fa7cf186162dfda50e569656237448d3a3e4b14ff0d32c753ca09654b19e8d3'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall :pkgutil => 'com.facebook.origami.*'
end
