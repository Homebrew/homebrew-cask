cask :v1 => 'origami' do
  version '2.0.1'
  sha256 '4a534b500af138823e52941fbeb0df674da7a5fa44e5966c13462eb95d55cb3f'

  url "https://origami.facebook.com/download/Origami-#{version}.zip"
  name 'Origami'
  homepage 'http://facebook.github.io/origami'
  license :gratis

  pkg "Origami #{version}.pkg"

  uninstall :pkgutil => 'com.facebook.origami.*'
end
