cask :v1 => 'origami' do
  version '2.1.2'
  sha256 '23a73555ccf1153e3e556a376f29c8b1b7b331629d3909b243d4eb4e0345df25'

  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          :sha256 => '8a5e0d9a2aa5d536927e08deaace15988410dd5062145af230094298259836bd'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall :pkgutil => 'com.facebook.origami.*'
end
