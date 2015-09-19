cask :v1 => 'origami' do
  version '2.1.1'
  sha256 '3b0a4bebe4c36d489ff266e7cd4a7c64f0491d962bdfd3bbb389ee6d2c6e61e5'

  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  appcast 'https://facebook.github.io/origami/update/updates.xml.rss',
          :sha256 => 'ab936f97936a2f94a13a964343e26b864083c1883e42a5885dc7029a12c508b6'
  name 'Origami'
  homepage 'https://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall :pkgutil => 'com.facebook.origami.*'
end
